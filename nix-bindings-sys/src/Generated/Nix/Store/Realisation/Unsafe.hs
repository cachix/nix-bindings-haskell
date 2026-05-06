{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Realisation.Unsafe
    ( Generated.Nix.Store.Realisation.Unsafe.nix_store_query_realisation
    , Generated.Nix.Store.Realisation.Unsafe.nix_realisation_free
    , Generated.Nix.Store.Realisation.Unsafe.nix_realisation_get_out_path
    , Generated.Nix.Store.Realisation.Unsafe.nix_realisation_get_signatures
    )
  where

import qualified Generated.Nix.Store.Fwd
import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Realisation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/realisation.h>"
  , "nix_realisation *hs_bindgen_714bbdf9ec43b1d9 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_query_realisation)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_858193d0c94618b3 ("
  , "  nix_realisation *arg1"
  , ")"
  , "{"
  , "  (nix_realisation_free)(arg1);"
  , "}"
  , "StorePath *hs_bindgen_1f63557edf95b578 ("
  , "  nix_c_context *arg1,"
  , "  nix_realisation const *arg2"
  , ")"
  , "{"
  , "  return (nix_realisation_get_out_path)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_3379d7d5fa2f3d0a ("
  , "  nix_c_context *arg1,"
  , "  nix_realisation const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  nix_c_context *arg1,"
  , "  void *arg2,"
  , "  char const *arg3"
  , ")"
  , ")"
  , "{"
  , "  return (nix_realisation_get_signatures)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_store_query_realisation@
foreign import ccall unsafe "hs_bindgen_714bbdf9ec43b1d9" hs_bindgen_714bbdf9ec43b1d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_store_query_realisation@
hs_bindgen_714bbdf9ec43b1d9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_realisation)
hs_bindgen_714bbdf9ec43b1d9 =
  RIP.fromFFIType hs_bindgen_714bbdf9ec43b1d9_base

{-| __C declaration:__ @nix_store_query_realisation@

    __defined at:__ @nix_api_store\/realisation.h 53:1@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_store_query_realisation ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @drv_output_id@
  -> IO (RIP.Ptr Nix_realisation)
nix_store_query_realisation =
  hs_bindgen_714bbdf9ec43b1d9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_free@
foreign import ccall unsafe "hs_bindgen_858193d0c94618b3" hs_bindgen_858193d0c94618b3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_free@
hs_bindgen_858193d0c94618b3 ::
     RIP.Ptr Nix_realisation
  -> IO ()
hs_bindgen_858193d0c94618b3 =
  RIP.fromFFIType hs_bindgen_858193d0c94618b3_base

{-| __C declaration:__ @nix_realisation_free@

    __defined at:__ @nix_api_store\/realisation.h 62:6@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_free ::
     RIP.Ptr Nix_realisation
     -- ^ __C declaration:__ @r@
  -> IO ()
nix_realisation_free = hs_bindgen_858193d0c94618b3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_get_out_path@
foreign import ccall unsafe "hs_bindgen_1f63557edf95b578" hs_bindgen_1f63557edf95b578_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_get_out_path@
hs_bindgen_1f63557edf95b578 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_realisation
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_1f63557edf95b578 =
  RIP.fromFFIType hs_bindgen_1f63557edf95b578_base

{-| __C declaration:__ @nix_realisation_get_out_path@

    __defined at:__ @nix_api_store\/realisation.h 72:13@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_get_out_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_realisation
     -- ^ __C declaration:__ @r@
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
nix_realisation_get_out_path =
  hs_bindgen_1f63557edf95b578

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_get_signatures@
foreign import ccall unsafe "hs_bindgen_3379d7d5fa2f3d0a" hs_bindgen_3379d7d5fa2f3d0a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_Unsafe_nix_realisation_get_signatures@
hs_bindgen_3379d7d5fa2f3d0a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_realisation
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_3379d7d5fa2f3d0a =
  RIP.fromFFIType hs_bindgen_3379d7d5fa2f3d0a_base

{-| __C declaration:__ @nix_realisation_get_signatures@

    __defined at:__ @nix_api_store\/realisation.h 90:9@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_get_signatures ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_realisation
     -- ^ __C declaration:__ @r@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_realisation_get_signatures =
  hs_bindgen_3379d7d5fa2f3d0a
