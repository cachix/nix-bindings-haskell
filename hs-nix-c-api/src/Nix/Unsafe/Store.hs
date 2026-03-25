-- | Throwing interface to the Nix store.
-- All functions throw 'Nix.Context.NixError' on failure.
module Nix.Unsafe.Store
  ( Store
  , StorePath
  , withStore
  , openStore
  , closeStore
  , storeUri
  , storeDir
  , storeVersion
  , isValidPath
  , parseStorePath
  , parseStorePath'
  , freeStorePath
  , storePathName
  ) where

import Control.Exception (bracket, bracketOnError)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr, castPtr, nullPtr)
import Generated.Nix.Util (Nix_err (..), Nix_get_string_callback)
import qualified Generated.Nix.Store.Safe as SysStore
import qualified Generated.Nix.Store.Path.Safe as SysStorePath
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.Context (checkError, checkNull, withCallbackBS)
import Nix.Internal (CNixContext, CStore, Store (..), StorePath (..))

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
withStore :: ByteString -> (Store -> IO a) -> IO a
withStore uri = bracket (openStore uri) closeStore

openStore :: ByteString -> IO Store
openStore uri =
  bracketOnError SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
    ptr <- BS.useAsCString uri $ \cUri ->
      SysStore.nix_store_open ctx (unsafeFromPtr cUri) nullPtr
    p <- checkNull ctx ptr
    pure (Store p ctx)

closeStore :: Store -> IO ()
closeStore store = do
  SysStore.nix_store_free (storePtr store)
  SysUtil.nix_c_context_free (storeCtx store)

getStoreString
  :: (Ptr CNixContext -> Ptr CStore -> Nix_get_string_callback -> Ptr a -> IO Nix_err)
  -> Store
  -> IO ByteString
getStoreString f store = do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    f (storeCtx store) (storePtr store) cb (castPtr ud)
  checkError (storeCtx store) rc
  pure bs

-- | Get the URI of the store.
storeUri :: Store -> IO ByteString
storeUri = getStoreString SysStore.nix_store_get_uri

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> IO ByteString
storeDir = getStoreString SysStore.nix_store_get_storedir

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> IO ByteString
storeVersion = getStoreString SysStore.nix_store_get_version

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> IO Bool
isValidPath store (StorePath sp) = do
  result <- SysStore.nix_store_is_valid_path (storeCtx store) (storePtr store) (unsafeFromPtr sp)
  pure (result /= 0)

-- | Parse a store path string into a 'StorePath'.
-- The 'StorePath' is valid only within the callback and freed afterwards.
parseStorePath :: Store -> ByteString -> (StorePath -> IO a) -> IO a
parseStorePath store path f =
  bracket (parseStorePath' store path) freeStorePath f

-- | Parse a store path string into a 'StorePath'.
-- Must be paired with 'freeStorePath'.
parseStorePath' :: Store -> ByteString -> IO StorePath
parseStorePath' store path =
  BS.useAsCString path $ \cPath -> do
    ptr <- checkNull (storeCtx store)
      =<< SysStore.nix_store_parse_path (storeCtx store) (storePtr store) (unsafeFromPtr cPath)
    pure (StorePath ptr)

-- | Free a 'StorePath'.
freeStorePath :: StorePath -> IO ()
freeStorePath (StorePath sp) = SysStorePath.nix_store_path_free sp

-- | Get the name component of a store path.
storePathName :: StorePath -> IO ByteString
storePathName (StorePath sp) =
  snd <$> withCallbackBS (\cb ud ->
    SysStorePath.nix_store_path_name (unsafeFromPtr sp) cb (castPtr ud))
