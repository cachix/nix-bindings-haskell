-- | High-level wrappers for the Nix realisation C API.
--
-- A 'Realisation' is the recorded result of building one output of a
-- content-addressed derivation: it maps a derivation output identifier
-- (e.g. @\<drvPath\>^out@) to the store path that build actually
-- produced, along with any signatures attesting to that mapping.
module Nix.C.Store.Realisation
  ( Realisation
  , queryRealisation
  , realisationOutPath
  , realisationSignatures
  ) where

import Control.Exception (bracket)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.IORef (modifyIORef', newIORef, readIORef)
import Foreign (FunPtr, Ptr, castFunPtr, castPtr, freeHaskellFunPtr, newForeignPtr, nullPtr, withForeignPtr)
import Foreign.C (CChar)
import qualified Generated.Nix.Store.Path.FunPtr as FPStorePath
import qualified Generated.Nix.Store.Realisation.FunPtr as FPRealisation
import qualified Generated.Nix.Store.Realisation.Safe as SysRealisation
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.C.Context (checkError)
import Nix.C.Internal (CNixContext, Realisation (..), Store (..), StorePath (..))

-- | Look up the realisation for a derivation output.
--
-- Returns 'Nothing' if the realisation is not known to the store.
-- Throws 'Nix.C.Context.NixError' on failure.
--
-- @drvOutputId@ is in the form @\<drvPath\>^\<outputName\>@, e.g.
-- @\/nix\/store\/abc...-foo.drv^out@. Prefer ids produced by
-- 'Nix.C.Store.Derivation.derivationOutputs'; the textual format may evolve.
queryRealisation :: Store -> ByteString -> IO (Maybe Realisation)
queryRealisation store drvOutputId =
  BS.useAsCString drvOutputId $ \cId -> do
    ptr <-
      SysRealisation.nix_store_query_realisation
        (storeCtx store)
        (storePtr store)
        (unsafeFromPtr cId)
    if ptr == nullPtr
      then do
        -- NULL has two meanings: missing or error; disambiguate via context.
        Nix_err rc <- SysUtil.nix_err_code (unsafeFromPtr (storeCtx store))
        checkError (storeCtx store) rc
        pure Nothing
      else
        Just . Realisation
          <$> newForeignPtr (castFunPtr FPRealisation.nix_realisation_free) ptr

-- | Get the output store path recorded by a realisation.
--
-- A valid realisation always carries an out path, so this never
-- returns NULL in normal operation; any NULL is reported as a
-- 'Nix.C.Context.NixError'.
realisationOutPath :: Realisation -> IO StorePath
realisationOutPath (Realisation rFP) =
  withForeignPtr rFP $ \r ->
    bracket SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
      ptr <-
        SysRealisation.nix_realisation_get_out_path
          ctx
          (unsafeFromPtr r)
      if ptr == nullPtr
        then do
          Nix_err rc <- SysUtil.nix_err_code (unsafeFromPtr ctx)
          checkError ctx rc
          error "realisationOutPath: nix_realisation_get_out_path returned NULL but no error"
        else StorePath <$> newForeignPtr (castFunPtr FPStorePath.nix_store_path_free) ptr

-- | Enumerate the signatures attached to a realisation.
--
-- Each signature is in the wire form @\<key-name\>:\<base64\>@.
realisationSignatures :: Realisation -> IO [ByteString]
realisationSignatures (Realisation rFP) =
  withForeignPtr rFP $ \r ->
    bracket SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
      ref <- newIORef []
      bracket
        (mkSigCallback (sigHandler ref))
        freeHaskellFunPtr
        $ \cb -> do
          Nix_err rc <-
            SysRealisation.nix_realisation_get_signatures
              ctx
              (unsafeFromPtr r)
              nullPtr
              (castFunPtr cb)
          checkError ctx rc
      reverse <$> readIORef ref
 where
  sigHandler ref _ctx _ud cstr =
    if cstr == nullPtr
      then pure ()
      else do
        bs <- BS.packCString cstr
        modifyIORef' ref (bs :)

type RawSigCallback = Ptr CNixContext -> Ptr () -> Ptr CChar -> IO ()

foreign import ccall "wrapper"
  mkSigCallback :: RawSigCallback -> IO (FunPtr RawSigCallback)
