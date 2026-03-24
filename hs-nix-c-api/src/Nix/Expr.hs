{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Safe interface to the Nix expression evaluator.
module Nix.Expr
  ( EvalState
  , withEvalState
  , evalFromString
  , valueForce
  , valueForceDeep
  ) where

import Control.Exception (bracket, bracketOnError, finally, throwIO)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr, nullPtr)
import Foreign.C (CInt (..), CString)
import Nix.Context
  ( NixException (..)
  , c_nix_c_context_create
  , c_nix_c_context_free
  , checkError
  )
import Nix.Internal
  ( CEvalState
  , CNixContext
  , CNixValue
  , CStore
  , EvalState (..)
  , Store (..)
  , Value (..)
  )

-- Opaque C type for the builder
data CEvalStateBuilder

-- FFI imports
foreign import capi "nix_api_expr.h nix_eval_state_builder_new"
  c_nix_eval_state_builder_new :: Ptr CNixContext -> Ptr CStore -> IO (Ptr CEvalStateBuilder)

foreign import capi "nix_api_expr.h nix_eval_state_builder_load"
  c_nix_eval_state_builder_load :: Ptr CNixContext -> Ptr CEvalStateBuilder -> IO CInt

foreign import capi "nix_api_expr.h nix_eval_state_build"
  c_nix_eval_state_build :: Ptr CNixContext -> Ptr CEvalStateBuilder -> IO (Ptr CEvalState)

foreign import capi "nix_api_expr.h nix_eval_state_builder_free"
  c_nix_eval_state_builder_free :: Ptr CEvalStateBuilder -> IO ()

foreign import capi "nix_api_expr.h nix_state_free"
  c_nix_state_free :: Ptr CEvalState -> IO ()

foreign import capi "nix_api_expr.h nix_expr_eval_from_string"
  c_nix_expr_eval_from_string
    :: Ptr CNixContext -> Ptr CEvalState -> CString -> CString -> Ptr CNixValue -> IO CInt

foreign import capi "nix_api_value.h nix_alloc_value"
  c_nix_alloc_value :: Ptr CNixContext -> Ptr CEvalState -> IO (Ptr CNixValue)

foreign import capi "nix_api_expr.h nix_value_force"
  c_nix_value_force :: Ptr CNixContext -> Ptr CEvalState -> Ptr CNixValue -> IO CInt

foreign import capi "nix_api_expr.h nix_value_force_deep"
  c_nix_value_force_deep :: Ptr CNixContext -> Ptr CEvalState -> Ptr CNixValue -> IO CInt

-- | Create an evaluator state and run an action with it.
-- The state is automatically freed when the action completes.
withEvalState :: Store -> (EvalState -> IO a) -> IO a
withEvalState store f =
  bracket createState destroyState f
 where
  createState =
    bracketOnError c_nix_c_context_create c_nix_c_context_free $ \ctx -> do
      builder <- c_nix_eval_state_builder_new ctx (storePtr store)
      if builder == nullPtr
        then throwIO $ NixException 1 "Failed to create eval state builder"
        else flip finally (c_nix_eval_state_builder_free builder) $ do
          checkError ctx =<< c_nix_eval_state_builder_load ctx builder
          state <- c_nix_eval_state_build ctx builder
          if state == nullPtr
            then throwIO $ NixException 1 "Failed to create eval state"
            else pure (EvalState state ctx)
  destroyState es = do
    c_nix_state_free (evalPtr es)
    c_nix_c_context_free (evalCtx es)

-- | Parse and evaluate a Nix expression from a string.
--
-- The @path@ argument is used to resolve relative paths in the expression.
evalFromString :: EvalState -> ByteString -> ByteString -> IO Value
evalFromString es expr path = do
  val <- c_nix_alloc_value (evalCtx es) (evalPtr es)
  if val == nullPtr
    then throwIO $ NixException 1 "Failed to allocate value"
    else do
      rc <- BS.useAsCString expr $ \cExpr ->
        BS.useAsCString path $ \cPath ->
          c_nix_expr_eval_from_string (evalCtx es) (evalPtr es) cExpr cPath val
      checkError (evalCtx es) rc
      pure (Value val)

-- | Force evaluation of a lazy value.
valueForce :: EvalState -> Value -> IO ()
valueForce es (Value val) = do
  rc <- c_nix_value_force (evalCtx es) (evalPtr es) val
  checkError (evalCtx es) rc

-- | Recursively force evaluation of a value and all its sub-values.
valueForceDeep :: EvalState -> Value -> IO ()
valueForceDeep es (Value val) = do
  rc <- c_nix_value_force_deep (evalCtx es) (evalPtr es) val
  checkError (evalCtx es) rc
