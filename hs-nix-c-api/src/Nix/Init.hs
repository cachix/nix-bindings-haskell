{-# LANGUAGE CApiFFI #-}

-- | Nix library initialization.
--
-- Call 'initNix' once before using any other Nix API functions.
module Nix.Init
  ( initNix
  , nixVersion
  ) where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (Ptr)
import Foreign.C (CInt (..), CString)
import Nix.Context (withContext)
import Nix.Internal (CNixContext)

foreign import capi "nix_api_util.h nix_libutil_init"
  c_nix_libutil_init :: Ptr CNixContext -> IO CInt

foreign import capi "nix_api_store.h nix_libstore_init"
  c_nix_libstore_init :: Ptr CNixContext -> IO CInt

foreign import capi "nix_api_expr.h nix_libexpr_init"
  c_nix_libexpr_init :: Ptr CNixContext -> IO CInt

foreign import capi "nix_api_util.h nix_version_get"
  c_nix_version_get :: IO CString

-- | Initialize all Nix libraries.
-- This is idempotent and safe to call multiple times.
initNix :: IO ()
initNix = do
  withContext c_nix_libutil_init
  withContext c_nix_libstore_init
  withContext c_nix_libexpr_init

-- | Get the Nix version string.
nixVersion :: IO ByteString
nixVersion = BS.packCString =<< c_nix_version_get
