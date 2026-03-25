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
import Foreign (alloca, castPtr, finalizeForeignPtr, peek, withForeignPtr)
import qualified Foreign.Concurrent as FC
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
-- Automatically freed when garbage collected.
-- Use 'freeFlakeSettings' for immediate deterministic cleanup.
createFlakeSettings :: IO FlakeSettings
createFlakeSettings = withContext' $ \ctx -> do
  ptr <- checkNull ctx =<< SysFlake.nix_flake_settings_new ctx
  FlakeSettings <$> FC.newForeignPtr ptr (SysFlake.nix_flake_settings_free ptr)

-- | Free flake settings immediately.
-- This is optional; the settings will be freed by the GC if not called.
freeFlakeSettings :: FlakeSettings -> IO ()
freeFlakeSettings (FlakeSettings fs) = finalizeForeignPtr fs

-- | Run an action with flake settings that are automatically freed afterwards.
withFlakeSettings :: (FlakeSettings -> IO a) -> IO a
withFlakeSettings = bracket createFlakeSettings freeFlakeSettings

-- | Create new fetchers settings.
-- Automatically freed when garbage collected.
-- Use 'freeFetchersSettings' for immediate deterministic cleanup.
createFetchersSettings :: IO FetchersSettings
createFetchersSettings = withContext' $ \ctx -> do
  ptr <- checkNull ctx =<< SysFetchers.nix_fetchers_settings_new ctx
  FetchersSettings <$> FC.newForeignPtr ptr (SysFetchers.nix_fetchers_settings_free ptr)

-- | Free fetchers settings immediately.
-- This is optional; the settings will be freed by the GC if not called.
freeFetchersSettings :: FetchersSettings -> IO ()
freeFetchersSettings (FetchersSettings fs) = finalizeForeignPtr fs

-- | Run an action with fetchers settings that are automatically freed afterwards.
withFetchersSettings :: (FetchersSettings -> IO a) -> IO a
withFetchersSettings = bracket createFetchersSettings freeFetchersSettings

-- | Create an evaluator state with flake settings added to the builder.
-- Must be paired with 'Nix.Unsafe.Expr.destroyEvalState'.
createFlakeEvalState :: Store -> FlakeSettings -> IO EvalState
createFlakeEvalState store (FlakeSettings fsFP) =
  withForeignPtr fsFP $ \fs ->
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
parseFlakeReference (FetchersSettings fetchFP) (FlakeSettings flakeFP) mBaseDir refStr =
  withForeignPtr fetchFP $ \fetchS ->
    withForeignPtr flakeFP $ \flakeS ->
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
            refFP <- FC.newForeignPtr ref (SysFlake.nix_flake_reference_free ref)
            pure (FlakeReference refFP, fragment)

-- | Free a flake reference immediately.
-- This is optional; the reference will be freed by the GC if not called.
freeFlakeReference :: FlakeReference -> IO ()
freeFlakeReference (FlakeReference ref) = finalizeForeignPtr ref

-- | Lock a flake reference.
-- Automatically freed when garbage collected.
-- Use 'freeLockedFlake' for immediate deterministic cleanup.
lockFlake
  :: FetchersSettings
  -> FlakeSettings
  -> EvalState
  -> LockMode
  -> FlakeReference
  -> IO LockedFlake
lockFlake (FetchersSettings fetchFP) (FlakeSettings flakeFP) es mode (FlakeReference refFP) =
  withForeignPtr fetchFP $ \fetchS ->
    withForeignPtr flakeFP $ \flakeS ->
      withForeignPtr refFP $ \ref -> do
        let ctx = evalCtx es
        lockFlags <- checkNull ctx =<< SysFlake.nix_flake_lock_flags_new ctx flakeS
        flip finally (SysFlake.nix_flake_lock_flags_free lockFlags) $ do
          checkError ctx . unwrapNix_err =<< case mode of
            LockWriteAsNeeded -> SysFlake.nix_flake_lock_flags_set_mode_write_as_needed ctx lockFlags
            LockVirtual -> SysFlake.nix_flake_lock_flags_set_mode_virtual ctx lockFlags
            LockCheck -> SysFlake.nix_flake_lock_flags_set_mode_check ctx lockFlags
          locked <- checkNull ctx
            =<< SysFlake.nix_flake_lock ctx fetchS flakeS (evalPtr es) lockFlags ref
          LockedFlake <$> FC.newForeignPtr locked (SysFlake.nix_locked_flake_free locked)

-- | Free a locked flake immediately.
-- This is optional; the locked flake will be freed by the GC if not called.
freeLockedFlake :: LockedFlake -> IO ()
freeLockedFlake (LockedFlake lf) = finalizeForeignPtr lf

-- | Get the output attributes of a locked flake.
getFlakeOutputs :: FlakeSettings -> EvalState -> LockedFlake -> IO Value
getFlakeOutputs (FlakeSettings flakeFP) es (LockedFlake lfFP) =
  withForeignPtr flakeFP $ \flakeS ->
    withForeignPtr lfFP $ \lf -> do
      let ctx = evalCtx es
      val <- checkNull ctx
        =<< SysFlake.nix_locked_flake_get_output_attrs ctx flakeS (evalPtr es) lf
      pure (Value (castPtr val))
