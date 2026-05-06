-- | High-level wrappers for Nix derivation accessors.
--
-- Build a 'Derivation' from a store path with
-- 'Nix.C.Unsafe.Store.drvFromStorePath', then enumerate its outputs
-- and inputs with the functions in this module. The drv-output ids
-- produced by 'derivationOutputs' are suitable for
-- 'Nix.C.Store.Realisation.queryRealisation'.
module Nix.C.Store.Derivation
  ( Derivation
  , derivationOutputs
  , derivationInputDrvOutputs
  , derivationHasDynamicInputs
  ) where

import Control.Exception (bracket)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.IORef (IORef, modifyIORef', newIORef, readIORef)
import Foreign (FunPtr, Ptr, alloca, castFunPtr, freeHaskellFunPtr, nullPtr, peek, withForeignPtr)
import Foreign.C (CBool (..), CChar)
import qualified Generated.Nix.Store.Derivation.Safe as SysDerivation
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.C.Context (checkError)
import Nix.C.Internal (CNixContext, Derivation (..), Store (..), StorePath (..))

-- | Enumerate the outputs of a derivation.
--
-- Returns @(outputName, drvOutputId)@ pairs. @drvOutputId@ has the
-- canonical form @\<drvPath\>^\<outputName\>@ and round-trips through
-- 'Nix.C.Store.Realisation.queryRealisation'.
--
-- The store reference is used only to render the @drvPath@ component
-- of the returned ids; the derivation itself is not modified.
derivationOutputs :: Store -> Derivation -> StorePath -> IO [(ByteString, ByteString)]
derivationOutputs store (Derivation drvFP) (StorePath spFP) =
  withForeignPtr drvFP $ \drv ->
    withForeignPtr spFP $ \sp -> do
      ref <- newIORef []
      bracket
        (mkPairCallback (pairHandler ref))
        freeHaskellFunPtr
        $ \cb -> do
          Nix_err rc <-
            SysDerivation.nix_derivation_get_outputs
              (storeCtx store)
              (storePtr store)
              (unsafeFromPtr drv)
              (unsafeFromPtr sp)
              nullPtr
              (castFunPtr cb)
          checkError (storeCtx store) rc
      reverse <$> readIORef ref

-- | Enumerate the @(input_drv_path, output_name)@ pairs that this
-- derivation directly consumes.
--
-- Only the static portion of @inputDrvs@ is surfaced. If the
-- derivation has any dynamic-derivation inputs, those are __not__
-- returned; check 'derivationHasDynamicInputs' first if you need to
-- handle that case.
derivationInputDrvOutputs :: Store -> Derivation -> IO [(ByteString, ByteString)]
derivationInputDrvOutputs store (Derivation drvFP) =
  withForeignPtr drvFP $ \drv -> do
    ref <- newIORef []
    bracket
      (mkPairCallback (pairHandler ref))
      freeHaskellFunPtr
      $ \cb -> do
        Nix_err rc <-
          SysDerivation.nix_derivation_get_input_drv_outputs
            (storeCtx store)
            (storePtr store)
            (unsafeFromPtr drv)
            nullPtr
            (castFunPtr cb)
        checkError (storeCtx store) rc
    reverse <$> readIORef ref

-- | Report whether the derivation has any inputs that are outputs of
-- dynamic derivations (i.e. derivations themselves built by another
-- derivation in the input graph).
--
-- 'derivationInputDrvOutputs' silently skips dynamic inputs, so
-- callers that walk the input graph should check this first.
derivationHasDynamicInputs :: Derivation -> IO Bool
derivationHasDynamicInputs (Derivation drvFP) =
  withForeignPtr drvFP $ \drv ->
    bracket SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx ->
      alloca $ \out -> do
        Nix_err rc <-
          SysDerivation.nix_derivation_has_dynamic_inputs
            ctx
            (unsafeFromPtr drv)
            out
        checkError ctx rc
        CBool b <- peek out
        pure (b /= 0)

-- | Append a (first, second) pair captured by the C callback.
pairHandler
  :: IORef [(ByteString, ByteString)]
  -> Ptr CNixContext -> Ptr () -> Ptr CChar -> Ptr CChar -> IO ()
pairHandler ref _ctx _ud first second =
  if first == nullPtr || second == nullPtr
    then pure ()
    else do
      a <- BS.packCString first
      b <- BS.packCString second
      modifyIORef' ref ((a, b) :)

type RawPairCallback =
  Ptr CNixContext -> Ptr () -> Ptr CChar -> Ptr CChar -> IO ()

foreign import ccall "wrapper"
  mkPairCallback :: RawPairCallback -> IO (FunPtr RawPairCallback)
