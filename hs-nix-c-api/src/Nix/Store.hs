{-# LANGUAGE CApiFFI #-}

-- | Safe interface to the Nix store.
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

import Control.Exception (bracket, bracketOnError, throwIO)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (FunPtr, Ptr, nullPtr)
import Foreign.C
  ( CBool (..)
  , CInt (..)
  , CString
  )
import Nix.Context
  ( NixException (..)
  , StringCallback
  , c_nix_c_context_create
  , c_nix_c_context_free
  , checkError
  , getErrorMsg
  , withCallbackBS
  )
import Nix.Internal (CNixContext, CStore, CStorePath, Store (..), StorePath (..))

-- FFI imports
foreign import capi "nix_api_store.h nix_store_open"
  c_nix_store_open :: Ptr CNixContext -> CString -> Ptr (Ptr CString) -> IO (Ptr CStore)

foreign import capi "nix_api_store.h nix_store_free"
  c_nix_store_free :: Ptr CStore -> IO ()

foreign import capi "nix_api_store.h nix_store_get_uri"
  c_nix_store_get_uri
    :: Ptr CNixContext -> Ptr CStore -> FunPtr StringCallback -> Ptr () -> IO CInt

foreign import capi "nix_api_store.h nix_store_get_storedir"
  c_nix_store_get_storedir
    :: Ptr CNixContext -> Ptr CStore -> FunPtr StringCallback -> Ptr () -> IO CInt

foreign import capi "nix_api_store.h nix_store_get_version"
  c_nix_store_get_version
    :: Ptr CNixContext -> Ptr CStore -> FunPtr StringCallback -> Ptr () -> IO CInt

foreign import capi "nix_api_store.h nix_store_is_valid_path"
  c_nix_store_is_valid_path :: Ptr CNixContext -> Ptr CStore -> Ptr CStorePath -> IO CBool

foreign import capi "nix_api_store.h nix_store_parse_path"
  c_nix_store_parse_path :: Ptr CNixContext -> Ptr CStore -> CString -> IO (Ptr CStorePath)

foreign import capi "nix_api_store/store_path.h nix_store_path_name"
  c_nix_store_path_name :: Ptr CStorePath -> FunPtr StringCallback -> Ptr () -> IO ()

foreign import capi "nix_api_store/store_path.h nix_store_path_free"
  c_nix_store_path_free :: Ptr CStorePath -> IO ()

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
withStore :: ByteString -> (Store -> IO a) -> IO a
withStore uri = bracket (openStore uri) closeStore

openStore :: ByteString -> IO Store
openStore uri =
  bracketOnError c_nix_c_context_create c_nix_c_context_free $ \ctx -> do
    ptr <- BS.useAsCString uri $ \cUri ->
      c_nix_store_open ctx cUri nullPtr
    if ptr == nullPtr
      then do
        msg <- getErrorMsg ctx
        throwIO $ NixException 1 msg
      else pure (Store ptr ctx)

closeStore :: Store -> IO ()
closeStore store = do
  c_nix_store_free (storePtr store)
  c_nix_c_context_free (storeCtx store)

getStoreString
  :: (Ptr CNixContext -> Ptr CStore -> FunPtr StringCallback -> Ptr () -> IO CInt)
  -> Store
  -> IO ByteString
getStoreString f store =
  withCallbackBS $ \cb ud -> do
    rc <- f (storeCtx store) (storePtr store) cb ud
    checkError (storeCtx store) rc

-- | Get the URI of the store.
storeUri :: Store -> IO ByteString
storeUri = getStoreString c_nix_store_get_uri

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> IO ByteString
storeDir = getStoreString c_nix_store_get_storedir

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> IO ByteString
storeVersion = getStoreString c_nix_store_get_version

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> IO Bool
isValidPath store (StorePath sp) = do
  result <- c_nix_store_is_valid_path (storeCtx store) (storePtr store) sp
  pure (result /= 0)

-- | Parse a store path string into a 'StorePath'.
-- The 'StorePath' is valid only within the callback and freed afterwards.
parseStorePath :: Store -> ByteString -> (StorePath -> IO a) -> IO a
parseStorePath store path f =
  BS.useAsCString path $ \cPath ->
    bracket
      ( do
          sp <- c_nix_store_parse_path (storeCtx store) (storePtr store) cPath
          if sp == nullPtr
            then do
              msg <- getErrorMsg (storeCtx store)
              throwIO $ NixException 1 msg
            else pure sp
      )
      c_nix_store_path_free
      (f . StorePath)

-- | Get the name component of a store path.
storePathName :: StorePath -> IO ByteString
storePathName (StorePath sp) =
  withCallbackBS $ \cb ud ->
    c_nix_store_path_name sp cb ud
