-- | Throwing interface to the Nix expression evaluator.
-- All fallible functions throw 'Nix.C.Context.NixError' on failure.
module Nix.C.Unsafe.Expr
  ( EvalState
  , withEvalState
  , withEvalStateWith
  , createEvalState
  , createEvalStateWith
  , destroyEvalState
  , evalFromString
  , valueForce
  , valueForceDeep
  , valueCall
  , valueCallMulti
  ) where

import Control.Exception (bracket, bracketOnError, finally)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr, castPtr, nullPtr, withArray)
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Expr.Safe as SysExpr
import qualified Generated.Nix.Util.Safe as SysUtil
import qualified Generated.Nix.Value.Safe as SysValue
import HsBindgen.Runtime.PtrConst (PtrConst, unsafeFromPtr)
import Nix.C.Context (checkError, checkNull)
import Nix.C.Internal (EvalState (..), Store (..), Value (..), castEvalPtr, osPathToByteString)
import System.OsPath (OsPath)

-- | Create an evaluator state and run an action with it.
-- The state is automatically freed when the action completes.
--
-- The 'EvalState' handle is __not thread-safe__.
-- Do not use it concurrently from multiple threads.
withEvalState :: Store -> (EvalState -> IO a) -> IO a
withEvalState store f =
  bracket (createEvalState store) destroyEvalState f

-- | Create a new evaluator state.
-- Must be paired with 'destroyEvalState'.
createEvalState :: Store -> IO EvalState
createEvalState store = createEvalStateWith store []

-- | Free an evaluator state and its context.
destroyEvalState :: EvalState -> IO ()
destroyEvalState es = do
  SysExpr.nix_state_free (evalPtr es)
  SysUtil.nix_c_context_free (evalCtx es)

-- | Create an evaluator state with a custom lookup path.
-- The lookup path entries should be in the form @"name=\/path"@ (e.g. @"nixpkgs=\/nix\/store\/..."@).
createEvalStateWith :: Store -> [ByteString] -> IO EvalState
createEvalStateWith store lookupPath =
  bracketOnError SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
    builder <- checkNull ctx
      =<< SysExpr.nix_eval_state_builder_new ctx (castPtr (storePtr store))
    flip finally (SysExpr.nix_eval_state_builder_free builder) $ do
      withCStringArray lookupPath $ \arr ->
        checkError ctx . unwrapNix_err
          =<< SysExpr.nix_eval_state_builder_set_lookup_path ctx builder arr
      checkError ctx . unwrapNix_err =<< SysExpr.nix_eval_state_builder_load ctx builder
      state <- checkNull ctx =<< SysExpr.nix_eval_state_build ctx builder
      pure (EvalState state ctx)

-- | Create an evaluator state with a custom lookup path and run an action with it.
-- The state is automatically freed when the action completes.
withEvalStateWith :: Store -> [ByteString] -> (EvalState -> IO a) -> IO a
withEvalStateWith store lookupPath f =
  bracket (createEvalStateWith store lookupPath) destroyEvalState f

-- | Marshal a list of ByteStrings into a null-terminated C string array.
withCStringArray :: [ByteString] -> (Ptr (PtrConst a) -> IO b) -> IO b
withCStringArray bss f = go bss []
 where
  go [] acc = withArray (reverse (nullPtr : acc)) (f . castPtr)
  go (b : bs) acc = BS.useAsCString b $ \cstr -> go bs (cstr : acc)

-- | Parse and evaluate a Nix expression from a string.
--
-- The @path@ argument is a filesystem path used to resolve relative
-- paths in the expression.
evalFromString :: EvalState -> ByteString -> OsPath -> IO Value
evalFromString es expr path = do
  val <- checkNull (evalCtx es) =<< SysValue.nix_alloc_value (evalCtx es) (castEvalPtr es)
  Nix_err rc <- BS.useAsCString expr $ \cExpr ->
    BS.useAsCString (osPathToByteString path) $ \cPath ->
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

-- | Call a Nix function with one argument (strict).
-- Forces evaluation of the result.
valueCall :: EvalState -> Value -> Value -> IO Value
valueCall es (Value fn) (Value arg) = do
  result <- checkNull (evalCtx es)
    =<< SysValue.nix_alloc_value (evalCtx es) (castEvalPtr es)
  checkError (evalCtx es) . unwrapNix_err
    =<< SysExpr.nix_value_call (evalCtx es) (evalPtr es) (castPtr fn) (castPtr arg) (castPtr result)
  pure (Value result)

-- | Call a Nix function with multiple arguments (strict).
-- Equivalent to nested single-argument calls.
valueCallMulti :: EvalState -> Value -> [Value] -> IO Value
valueCallMulti es (Value fn) args = do
  result <- checkNull (evalCtx es)
    =<< SysValue.nix_alloc_value (evalCtx es) (castEvalPtr es)
  let argPtrs = map (\(Value v) -> castPtr v) args
  withArray argPtrs $ \argsArray ->
    checkError (evalCtx es) . unwrapNix_err
      =<< SysExpr.nix_value_call_multi (evalCtx es) (evalPtr es) (castPtr fn) (fromIntegral (length argPtrs)) (castPtr argsArray) (castPtr result)
  pure (Value result)
