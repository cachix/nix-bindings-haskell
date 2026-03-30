-- | Throwing interface to Nix settings.
-- All fallible functions throw 'Nix.C.Context.NixError' on failure.
module Nix.C.Unsafe.Settings
  ( getSetting
  , setSetting
  ) where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Foreign (castPtr)
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.C.Context (checkError, withCallbackBS, withContext')

-- | Get a Nix setting by key name.
getSetting :: ByteString -> IO ByteString
getSetting key = withContext' $ \ctx -> do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    BS.useAsCString key $ \cKey ->
      SysUtil.nix_setting_get ctx (unsafeFromPtr cKey) cb (castPtr ud)
  checkError ctx rc
  pure bs

-- | Set a Nix setting to a value.
setSetting :: ByteString -> ByteString -> IO ()
setSetting key value = withContext' $ \ctx -> do
  Nix_err rc <- BS.useAsCString key $ \cKey ->
    BS.useAsCString value $ \cValue ->
      SysUtil.nix_setting_set ctx (unsafeFromPtr cKey) (unsafeFromPtr cValue)
  checkError ctx rc
