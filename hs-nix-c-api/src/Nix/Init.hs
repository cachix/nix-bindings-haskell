-- | Nix library initialization.
--
-- Call 'initNix' once before using any other Nix API functions.
module Nix.Init
  ( initNix
  , nixVersion
  ) where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Expr.Safe as SysExpr
import qualified Generated.Nix.Store.Safe as SysStore
import qualified Generated.Nix.Util.Safe as SysUtil
import HsBindgen.Runtime.PtrConst (unsafeToPtr)
import Nix.Context (withContext)

-- | Initialize all Nix libraries.
-- This is idempotent and safe to call multiple times.
-- Throws 'Nix.Context.NixError' on failure.
initNix :: IO ()
initNix = do
  withContext $ \ctx -> unwrapNix_err <$> SysUtil.nix_libutil_init ctx
  withContext $ \ctx -> unwrapNix_err <$> SysStore.nix_libstore_init ctx
  withContext $ \ctx -> unwrapNix_err <$> SysExpr.nix_libexpr_init ctx

-- | Get the Nix version string.
nixVersion :: IO ByteString
nixVersion = BS.packCString . unsafeToPtr =<< SysUtil.nix_version_get
