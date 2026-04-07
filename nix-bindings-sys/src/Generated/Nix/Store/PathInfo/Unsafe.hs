{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.PathInfo.Unsafe
    ( Generated.Nix.Store.PathInfo.Unsafe.nix_store_query_path_info
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_free
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_nar_hash
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_nar_size
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_references
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_deriver
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_sigs
    , Generated.Nix.Store.PathInfo.Unsafe.nix_path_info_get_ca
    )
  where

import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.PathInfo

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/path_info.h>"
  , "PathInfo *hs_bindgen_e74e8d18a3e14f6c ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_query_path_info)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f3c4fb437464b5f1 ("
  , "  PathInfo *arg1"
  , ")"
  , "{"
  , "  (nix_path_info_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_ff93c54df0b5c485 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_path_info_get_nar_hash)(arg1, arg2, arg3, arg4);"
  , "}"
  , "uint64_t hs_bindgen_f39107581851a3c6 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return (nix_path_info_get_nar_size)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_554466a843c0758e ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  void *arg1,"
  , "  StorePath const *arg2"
  , ")"
  , ")"
  , "{"
  , "  return (nix_path_info_get_references)(arg1, arg2, arg3, arg4);"
  , "}"
  , "StorePath *hs_bindgen_63f17b669d4f1f06 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return (nix_path_info_get_deriver)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_2121f9a4f2babae8 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  unsigned int arg3"
  , ")"
  , ")"
  , "{"
  , "  return (nix_path_info_get_sigs)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_ae4616bc3dfb30f3 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_path_info_get_ca)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_store_query_path_info@
foreign import ccall unsafe "hs_bindgen_e74e8d18a3e14f6c" hs_bindgen_e74e8d18a3e14f6c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_store_query_path_info@
hs_bindgen_e74e8d18a3e14f6c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO (RIP.Ptr PathInfo)
hs_bindgen_e74e8d18a3e14f6c =
  RIP.fromFFIType hs_bindgen_e74e8d18a3e14f6c_base

{-| __C declaration:__ @nix_store_query_path_info@

    __defined at:__ @nix_api_store\/path_info.h 40:12@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_store_query_path_info ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> IO (RIP.Ptr PathInfo)
nix_store_query_path_info =
  hs_bindgen_e74e8d18a3e14f6c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_free@
foreign import ccall unsafe "hs_bindgen_f3c4fb437464b5f1" hs_bindgen_f3c4fb437464b5f1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_free@
hs_bindgen_f3c4fb437464b5f1 ::
     RIP.Ptr PathInfo
  -> IO ()
hs_bindgen_f3c4fb437464b5f1 =
  RIP.fromFFIType hs_bindgen_f3c4fb437464b5f1_base

{-| __C declaration:__ @nix_path_info_free@

    __defined at:__ @nix_api_store\/path_info.h 48:6@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_free ::
     RIP.Ptr PathInfo
     -- ^ __C declaration:__ @path_info@
  -> IO ()
nix_path_info_free = hs_bindgen_f3c4fb437464b5f1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_nar_hash@
foreign import ccall unsafe "hs_bindgen_ff93c54df0b5c485" hs_bindgen_ff93c54df0b5c485_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_nar_hash@
hs_bindgen_ff93c54df0b5c485 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ff93c54df0b5c485 =
  RIP.fromFFIType hs_bindgen_ff93c54df0b5c485_base

{-| __C declaration:__ @nix_path_info_get_nar_hash@

    __defined at:__ @nix_api_store\/path_info.h 62:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_nar_hash ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_path_info_get_nar_hash =
  hs_bindgen_ff93c54df0b5c485

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_nar_size@
foreign import ccall unsafe "hs_bindgen_f39107581851a3c6" hs_bindgen_f39107581851a3c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_nar_size@
hs_bindgen_f39107581851a3c6 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> IO HsBindgen.Runtime.LibC.Word64
hs_bindgen_f39107581851a3c6 =
  RIP.fromFFIType hs_bindgen_f39107581851a3c6_base

{-| __C declaration:__ @nix_path_info_get_nar_size@

    __defined at:__ @nix_api_store\/path_info.h 72:10@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_nar_size ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> IO HsBindgen.Runtime.LibC.Word64
nix_path_info_get_nar_size =
  hs_bindgen_f39107581851a3c6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_references@
foreign import ccall unsafe "hs_bindgen_554466a843c0758e" hs_bindgen_554466a843c0758e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_references@
hs_bindgen_554466a843c0758e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_554466a843c0758e =
  RIP.fromFFIType hs_bindgen_554466a843c0758e_base

{-| __C declaration:__ @nix_path_info_get_references@

    __defined at:__ @nix_api_store\/path_info.h 86:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_references ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_path_info_get_references =
  hs_bindgen_554466a843c0758e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_deriver@
foreign import ccall unsafe "hs_bindgen_63f17b669d4f1f06" hs_bindgen_63f17b669d4f1f06_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_deriver@
hs_bindgen_63f17b669d4f1f06 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_63f17b669d4f1f06 =
  RIP.fromFFIType hs_bindgen_63f17b669d4f1f06_base

{-| __C declaration:__ @nix_path_info_get_deriver@

    __defined at:__ @nix_api_store\/path_info.h 100:13@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_deriver ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
nix_path_info_get_deriver =
  hs_bindgen_63f17b669d4f1f06

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_sigs@
foreign import ccall unsafe "hs_bindgen_2121f9a4f2babae8" hs_bindgen_2121f9a4f2babae8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_sigs@
hs_bindgen_2121f9a4f2babae8 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_2121f9a4f2babae8 =
  RIP.fromFFIType hs_bindgen_2121f9a4f2babae8_base

{-| __C declaration:__ @nix_path_info_get_sigs@

    __defined at:__ @nix_api_store\/path_info.h 113:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_sigs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_path_info_get_sigs = hs_bindgen_2121f9a4f2babae8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_ca@
foreign import ccall unsafe "hs_bindgen_ae4616bc3dfb30f3" hs_bindgen_ae4616bc3dfb30f3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_path_info_get_ca@
hs_bindgen_ae4616bc3dfb30f3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ae4616bc3dfb30f3 =
  RIP.fromFFIType hs_bindgen_ae4616bc3dfb30f3_base

{-| __C declaration:__ @nix_path_info_get_ca@

    __defined at:__ @nix_api_store\/path_info.h 131:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_ca ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst PathInfo
     -- ^ __C declaration:__ @path_info@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_path_info_get_ca = hs_bindgen_ae4616bc3dfb30f3
