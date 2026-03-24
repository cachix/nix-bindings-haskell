-- | Safe interface to the Nix store.
-- All functions throw 'Nix.Context.NixError' on failure.
module Nix.Store
  ( Store
  , StorePath
  , withStore
  , storeUri
  , storeDir
  , storeVersion
  , isValidPath
  , parseStorePath
  , storePathName
  ) where

import Control.Exception (bracket, bracketOnError)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr, castPtr, nullPtr)
import Generated.Nix.Util (Nix_err (..), Nix_get_string_callback)
import qualified Generated.Nix.Store.Safe as SysStore
import qualified Generated.Nix.Store.Path.Safe as SysStorePath
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.Context
  ( c_nix_c_context_create
  , c_nix_c_context_free
  , checkError
  , checkNull
  , withCallbackBS
  )
import Nix.Internal (CNixContext, CStore, CStorePath, Store (..), StorePath (..))

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
withStore :: ByteString -> (Store -> IO a) -> IO a
withStore uri = bracket (openStore uri) closeStore

openStore :: ByteString -> IO Store
openStore uri =
  bracketOnError c_nix_c_context_create c_nix_c_context_free $ \ctx -> do
    ptr <- BS.useAsCString uri $ \cUri ->
      SysStore.nix_store_open ctx (unsafeFromPtr cUri) nullPtr
    p <- checkNull ctx ptr
    pure (Store p ctx)

closeStore :: Store -> IO ()
closeStore store = do
  SysStore.nix_store_free (storePtr store)
  c_nix_c_context_free (storeCtx store)

getStoreString
  :: (Ptr CNixContext -> Ptr CStore -> Nix_get_string_callback -> Ptr () -> IO Nix_err)
  -> Store
  -> IO ByteString
getStoreString f store = do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    f (storeCtx store) (storePtr store) cb ud
  checkError (storeCtx store) rc
  pure bs

-- | Get the URI of the store.
storeUri :: Store -> IO ByteString
storeUri = getStoreString (\ctx s cb ud -> SysStore.nix_store_get_uri ctx s cb (castPtr ud))

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> IO ByteString
storeDir = getStoreString (\ctx s cb ud -> SysStore.nix_store_get_storedir ctx s cb (castPtr ud))

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> IO ByteString
storeVersion = getStoreString (\ctx s cb ud -> SysStore.nix_store_get_version ctx s cb (castPtr ud))

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> IO Bool
isValidPath store (StorePath sp) = do
  result <- SysStore.nix_store_is_valid_path (storeCtx store) (storePtr store) (unsafeFromPtr sp)
  pure (result /= 0)

-- | Parse a store path string into a 'StorePath'.
-- The 'StorePath' is valid only within the callback and freed afterwards.
parseStorePath :: Store -> ByteString -> (StorePath -> IO a) -> IO a
parseStorePath store path f =
  BS.useAsCString path $ \cPath ->
    bracket
      (checkNull (storeCtx store)
        =<< SysStore.nix_store_parse_path (storeCtx store) (storePtr store) (unsafeFromPtr cPath))
      SysStorePath.nix_store_path_free
      (f . StorePath)

-- | Get the name component of a store path.
storePathName :: StorePath -> IO ByteString
storePathName (StorePath sp) =
  snd <$> withCallbackBS (\cb ud ->
    SysStorePath.nix_store_path_name (unsafeFromPtr sp) cb (castPtr ud))
