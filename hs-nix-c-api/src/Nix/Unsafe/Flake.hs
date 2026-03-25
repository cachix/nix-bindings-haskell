-- | Throwing interface to the Nix flake API.
-- All fallible functions throw 'Nix.Context.NixError' on failure.
module Nix.Unsafe.Flake
  ( FlakeSettings
  , FetchersSettings
  , FlakeReference
  , LockedFlake
  , LockMode (..)
  , createFlakeSettings
  , freeFlakeSettings
  , withFlakeSettings
  , createFetchersSettings
  , freeFetchersSettings
  , withFetchersSettings
  , createFlakeEvalState
  , withFlakeEvalState
  , parseFlakeReference
  , freeFlakeReference
  , lockFlake
  , freeLockedFlake
  , getFlakeOutputs
  ) where

import Control.Exception (bracket, bracketOnError, finally)
import Control.Monad (forM_)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (alloca, castPtr, peek)
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Expr.Safe as SysExpr
import qualified Generated.Nix.Fetchers.Safe as SysFetchers
import qualified Generated.Nix.Flake.Safe as SysFlake
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.Context (checkError, checkNull, withCallbackBS, withContext')
import Nix.Internal
  ( EvalState (..)
  , FetchersSettings (..)
  , FlakeReference (..)
  , FlakeSettings (..)
  , LockedFlake (..)
  , Store (..)
  , Value (..)
  )
import qualified Nix.Unsafe.Expr as Expr

-- | Flake lock mode.
data LockMode
  = LockWriteAsNeeded
  -- ^ Write lock file as needed.
  | LockVirtual
  -- ^ Do not write lock file; use virtual lock.
  | LockCheck
  -- ^ Check that lock file is up-to-date.
  deriving (Show, Eq, Ord, Bounded, Enum)

-- | Create new flake settings.
-- Must be paired with 'freeFlakeSettings'.
createFlakeSettings :: IO FlakeSettings
createFlakeSettings = withContext' $ \ctx ->
  FlakeSettings <$> (checkNull ctx =<< SysFlake.nix_flake_settings_new ctx)

-- | Free flake settings.
freeFlakeSettings :: FlakeSettings -> IO ()
freeFlakeSettings (FlakeSettings fs) = SysFlake.nix_flake_settings_free fs

-- | Run an action with flake settings that are automatically freed afterwards.
withFlakeSettings :: (FlakeSettings -> IO a) -> IO a
withFlakeSettings = bracket createFlakeSettings freeFlakeSettings

-- | Create new fetchers settings.
-- Must be paired with 'freeFetchersSettings'.
createFetchersSettings :: IO FetchersSettings
createFetchersSettings = withContext' $ \ctx ->
  FetchersSettings <$> (checkNull ctx =<< SysFetchers.nix_fetchers_settings_new ctx)

-- | Free fetchers settings.
freeFetchersSettings :: FetchersSettings -> IO ()
freeFetchersSettings (FetchersSettings fs) = SysFetchers.nix_fetchers_settings_free fs

-- | Run an action with fetchers settings that are automatically freed afterwards.
withFetchersSettings :: (FetchersSettings -> IO a) -> IO a
withFetchersSettings = bracket createFetchersSettings freeFetchersSettings

-- | Create an evaluator state with flake settings added to the builder.
-- Must be paired with 'Nix.Unsafe.Expr.destroyEvalState'.
createFlakeEvalState :: Store -> FlakeSettings -> IO EvalState
createFlakeEvalState store (FlakeSettings fs) =
  bracketOnError SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
    builder <- checkNull ctx
      =<< SysExpr.nix_eval_state_builder_new ctx (storePtr store)
    flip finally (SysExpr.nix_eval_state_builder_free builder) $ do
      checkError ctx . unwrapNix_err
        =<< SysFlake.nix_flake_settings_add_to_eval_state_builder ctx fs builder
      checkError ctx . unwrapNix_err
        =<< SysExpr.nix_eval_state_builder_load ctx builder
      state <- checkNull ctx =<< SysExpr.nix_eval_state_build ctx builder
      pure (EvalState state ctx)

-- | Create an evaluator state with flake settings and run an action with it.
-- The state is automatically freed when the action completes.
withFlakeEvalState :: Store -> FlakeSettings -> (EvalState -> IO a) -> IO a
withFlakeEvalState store fs f =
  bracket (createFlakeEvalState store fs) Expr.destroyEvalState f

-- | Parse a flake reference string into a 'FlakeReference' and a fragment.
parseFlakeReference
  :: FetchersSettings
  -> FlakeSettings
  -> Maybe ByteString
  -- ^ Optional base directory for resolving relative paths.
  -> ByteString
  -- ^ Flake reference string (e.g. @".#default"@).
  -> IO (FlakeReference, ByteString)
parseFlakeReference (FetchersSettings fetchS) (FlakeSettings flakeS) mBaseDir refStr =
  withContext' $ \ctx -> do
    parseFlags <- checkNull ctx
      =<< SysFlake.nix_flake_reference_parse_flags_new ctx flakeS
    flip finally (SysFlake.nix_flake_reference_parse_flags_free parseFlags) $ do
      forM_ mBaseDir $ \baseDir ->
        BS.useAsCStringLen baseDir $ \(cStr, len) ->
          checkError ctx . unwrapNix_err
            =<< SysFlake.nix_flake_reference_parse_flags_set_base_directory ctx parseFlags (unsafeFromPtr cStr) (fromIntegral len)
      alloca $ \refOut -> do
        (Nix_err rc, fragment) <- withCallbackBS $ \cb ud ->
          BS.useAsCStringLen refStr $ \(cStr, len) ->
            SysFlake.nix_flake_reference_and_fragment_from_string ctx fetchS flakeS parseFlags (unsafeFromPtr cStr) (fromIntegral len) (castPtr refOut) cb (castPtr ud)
        checkError ctx rc
        ref <- peek refOut
        pure (FlakeReference ref, fragment)

-- | Free a flake reference.
freeFlakeReference :: FlakeReference -> IO ()
freeFlakeReference (FlakeReference ref) = SysFlake.nix_flake_reference_free ref

-- | Lock a flake reference.
-- Must be paired with 'freeLockedFlake'.
lockFlake
  :: FetchersSettings
  -> FlakeSettings
  -> EvalState
  -> LockMode
  -> FlakeReference
  -> IO LockedFlake
lockFlake (FetchersSettings fetchS) (FlakeSettings flakeS) es mode (FlakeReference ref) = do
  let ctx = evalCtx es
  lockFlags <- checkNull ctx =<< SysFlake.nix_flake_lock_flags_new ctx flakeS
  flip finally (SysFlake.nix_flake_lock_flags_free lockFlags) $ do
    checkError ctx . unwrapNix_err =<< case mode of
      LockWriteAsNeeded -> SysFlake.nix_flake_lock_flags_set_mode_write_as_needed ctx lockFlags
      LockVirtual -> SysFlake.nix_flake_lock_flags_set_mode_virtual ctx lockFlags
      LockCheck -> SysFlake.nix_flake_lock_flags_set_mode_check ctx lockFlags
    locked <- checkNull ctx
      =<< SysFlake.nix_flake_lock ctx fetchS flakeS (evalPtr es) lockFlags ref
    pure (LockedFlake locked)

-- | Free a locked flake.
freeLockedFlake :: LockedFlake -> IO ()
freeLockedFlake (LockedFlake lf) = SysFlake.nix_locked_flake_free lf

-- | Get the output attributes of a locked flake.
getFlakeOutputs :: FlakeSettings -> EvalState -> LockedFlake -> IO Value
getFlakeOutputs (FlakeSettings flakeS) es (LockedFlake lf) = do
  let ctx = evalCtx es
  val <- checkNull ctx
    =<< SysFlake.nix_locked_flake_get_output_attrs ctx flakeS (evalPtr es) lf
  pure (Value (castPtr val))
