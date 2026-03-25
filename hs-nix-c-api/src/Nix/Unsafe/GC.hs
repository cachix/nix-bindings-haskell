-- | Throwing interface to Nix garbage collection.
-- All fallible functions throw 'Nix.Context.NixError' on failure.
module Nix.Unsafe.GC
  ( gcIncRef
  , gcDecRef
  , gcNow
  ) where

import Foreign (Ptr, castPtr, nullPtr)
import qualified Generated.Nix.Expr.Safe as SysExpr
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)

-- | Increment the GC reference count for a Nix object.
gcIncRef :: Ptr a -> IO ()
gcIncRef p = do
  _ <- SysExpr.nix_gc_incref nullPtr (unsafeFromPtr (castPtr p))
  pure ()

-- | Decrement the GC reference count for a Nix object.
gcDecRef :: Ptr a -> IO ()
gcDecRef p = do
  _ <- SysExpr.nix_gc_decref nullPtr (unsafeFromPtr (castPtr p))
  pure ()

-- | Force garbage collection now.
gcNow :: IO ()
gcNow = SysExpr.nix_gc_now
