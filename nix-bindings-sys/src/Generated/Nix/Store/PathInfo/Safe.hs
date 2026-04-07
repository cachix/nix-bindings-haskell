{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.PathInfo.Safe
    ( Generated.Nix.Store.PathInfo.Safe.nix_store_query_path_info
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_free
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_nar_hash
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_nar_size
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_references
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_deriver
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_sigs
    , Generated.Nix.Store.PathInfo.Safe.nix_path_info_get_ca
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
  , "PathInfo *hs_bindgen_e26e8b54e9bb8fe2 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_query_path_info)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a405d0154d4acc0b ("
  , "  PathInfo *arg1"
  , ")"
  , "{"
  , "  (nix_path_info_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_0455f0dfb0e3c39d ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_path_info_get_nar_hash)(arg1, arg2, arg3, arg4);"
  , "}"
  , "uint64_t hs_bindgen_0cef50d0f97d488c ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return (nix_path_info_get_nar_size)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_5f2249db7b123457 ("
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
  , "StorePath *hs_bindgen_020cb60a25f72749 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return (nix_path_info_get_deriver)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_b7c7bb470b640578 ("
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
  , "nix_err hs_bindgen_063a14c62ab2c8e3 ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_path_info_get_ca)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_store_query_path_info@
foreign import ccall safe "hs_bindgen_e26e8b54e9bb8fe2" hs_bindgen_e26e8b54e9bb8fe2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_store_query_path_info@
hs_bindgen_e26e8b54e9bb8fe2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO (RIP.Ptr PathInfo)
hs_bindgen_e26e8b54e9bb8fe2 =
  RIP.fromFFIType hs_bindgen_e26e8b54e9bb8fe2_base

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
  hs_bindgen_e26e8b54e9bb8fe2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_free@
foreign import ccall safe "hs_bindgen_a405d0154d4acc0b" hs_bindgen_a405d0154d4acc0b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_free@
hs_bindgen_a405d0154d4acc0b ::
     RIP.Ptr PathInfo
  -> IO ()
hs_bindgen_a405d0154d4acc0b =
  RIP.fromFFIType hs_bindgen_a405d0154d4acc0b_base

{-| __C declaration:__ @nix_path_info_free@

    __defined at:__ @nix_api_store\/path_info.h 48:6@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_free ::
     RIP.Ptr PathInfo
     -- ^ __C declaration:__ @path_info@
  -> IO ()
nix_path_info_free = hs_bindgen_a405d0154d4acc0b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_nar_hash@
foreign import ccall safe "hs_bindgen_0455f0dfb0e3c39d" hs_bindgen_0455f0dfb0e3c39d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_nar_hash@
hs_bindgen_0455f0dfb0e3c39d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0455f0dfb0e3c39d =
  RIP.fromFFIType hs_bindgen_0455f0dfb0e3c39d_base

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
  hs_bindgen_0455f0dfb0e3c39d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_nar_size@
foreign import ccall safe "hs_bindgen_0cef50d0f97d488c" hs_bindgen_0cef50d0f97d488c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_nar_size@
hs_bindgen_0cef50d0f97d488c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> IO HsBindgen.Runtime.LibC.Word64
hs_bindgen_0cef50d0f97d488c =
  RIP.fromFFIType hs_bindgen_0cef50d0f97d488c_base

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
  hs_bindgen_0cef50d0f97d488c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_references@
foreign import ccall safe "hs_bindgen_5f2249db7b123457" hs_bindgen_5f2249db7b123457_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_references@
hs_bindgen_5f2249db7b123457 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_5f2249db7b123457 =
  RIP.fromFFIType hs_bindgen_5f2249db7b123457_base

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
  hs_bindgen_5f2249db7b123457

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_deriver@
foreign import ccall safe "hs_bindgen_020cb60a25f72749" hs_bindgen_020cb60a25f72749_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_deriver@
hs_bindgen_020cb60a25f72749 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_020cb60a25f72749 =
  RIP.fromFFIType hs_bindgen_020cb60a25f72749_base

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
  hs_bindgen_020cb60a25f72749

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_sigs@
foreign import ccall safe "hs_bindgen_b7c7bb470b640578" hs_bindgen_b7c7bb470b640578_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_sigs@
hs_bindgen_b7c7bb470b640578 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b7c7bb470b640578 =
  RIP.fromFFIType hs_bindgen_b7c7bb470b640578_base

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
nix_path_info_get_sigs = hs_bindgen_b7c7bb470b640578

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_ca@
foreign import ccall safe "hs_bindgen_063a14c62ab2c8e3" hs_bindgen_063a14c62ab2c8e3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Safe_nix_path_info_get_ca@
hs_bindgen_063a14c62ab2c8e3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst PathInfo
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_063a14c62ab2c8e3 =
  RIP.fromFFIType hs_bindgen_063a14c62ab2c8e3_base

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
nix_path_info_get_ca = hs_bindgen_063a14c62ab2c8e3
