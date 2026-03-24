-- | Safe interface to the Nix expression evaluator.
-- All fallible functions throw 'Nix.Context.NixError' on failure.
module Nix.Expr
  ( EvalState
  , withEvalState
  , evalFromString
  , valueForce
  , valueForceDeep
  ) where

import Control.Exception (bracket, bracketOnError, finally)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr, castPtr)
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Expr.Safe as SysExpr
import qualified Generated.Nix.Value.Safe as SysValue
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.Context
  ( c_nix_c_context_create
  , c_nix_c_context_free
  , checkError
  , checkNull
  )
import Nix.Internal
  ( CEvalState
  , CEvalStateBuilder
  , CNixContext
  , CNixValue
  , CStore
  , EvalState (..)
  , Store (..)
  , Value (..)
  )

-- | Create an evaluator state and run an action with it.
-- The state is automatically freed when the action completes.
withEvalState :: Store -> (EvalState -> IO a) -> IO a
withEvalState store f =
  bracket createState destroyState f
 where
  createState =
    bracketOnError c_nix_c_context_create c_nix_c_context_free $ \ctx -> do
      builder <- checkNull ctx
        =<< SysExpr.nix_eval_state_builder_new ctx (storePtr store)
      flip finally (SysExpr.nix_eval_state_builder_free builder) $ do
        checkError ctx . unwrapNix_err =<< SysExpr.nix_eval_state_builder_load ctx builder
        state <- checkNull ctx =<< SysExpr.nix_eval_state_build ctx builder
        pure (EvalState state ctx)
  destroyState es = do
    SysExpr.nix_state_free (evalPtr es)
    c_nix_c_context_free (evalCtx es)

-- | Parse and evaluate a Nix expression from a string.
--
-- The @path@ argument is used to resolve relative paths in the expression.
evalFromString :: EvalState -> ByteString -> ByteString -> IO Value
evalFromString es expr path = do
  val <- checkNull (evalCtx es) =<< SysValue.nix_alloc_value (evalCtx es) (castPtr (evalPtr es))
  Nix_err rc <- BS.useAsCString expr $ \cExpr ->
    BS.useAsCString path $ \cPath ->
      SysExpr.nix_expr_eval_from_string (evalCtx es) (evalPtr es) (unsafeFromPtr cExpr) (unsafeFromPtr cPath) (castPtr val)
  checkError (evalCtx es) rc
  pure (Value val)

-- | Force evaluation of a lazy value.
valueForce :: EvalState -> Value -> IO ()
valueForce es (Value val) =
  checkError (evalCtx es) . unwrapNix_err
    =<< SysExpr.nix_value_force (evalCtx es) (evalPtr es) (castPtr val)

-- | Recursively force evaluation of a value and all its sub-values.
valueForceDeep :: EvalState -> Value -> IO ()
valueForceDeep es (Value val) =
  checkError (evalCtx es) . unwrapNix_err
    =<< SysExpr.nix_value_force_deep (evalCtx es) (evalPtr es) (castPtr val)
