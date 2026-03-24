{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Safe
    ( Generated.Nix.Store.Safe.nix_libstore_init
    , Generated.Nix.Store.Safe.nix_libstore_init_no_load_config
    , Generated.Nix.Store.Safe.nix_store_open
    , Generated.Nix.Store.Safe.nix_store_free
    , Generated.Nix.Store.Safe.nix_store_get_uri
    , Generated.Nix.Store.Safe.nix_store_get_storedir
    , Generated.Nix.Store.Safe.nix_store_parse_path
    , Generated.Nix.Store.Safe.nix_store_is_valid_path
    , Generated.Nix.Store.Safe.nix_store_real_path
    , Generated.Nix.Store.Safe.nix_store_realise
    , Generated.Nix.Store.Safe.nix_store_get_version
    , Generated.Nix.Store.Safe.nix_derivation_from_json
    , Generated.Nix.Store.Safe.nix_add_derivation
    , Generated.Nix.Store.Safe.nix_store_copy_closure
    , Generated.Nix.Store.Safe.nix_store_get_fs_closure
    , Generated.Nix.Store.Safe.nix_store_drv_from_store_path
    , Generated.Nix.Store.Safe.nix_store_query_path_from_hash_part
    , Generated.Nix.Store.Safe.nix_store_copy_path
    )
  where

import qualified Generated.Nix.Store.Derivation
import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store.h>"
  , "nix_err hs_bindgen_4aef9d69fa7a2037 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libstore_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_1e6f6dad12ef8db9 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libstore_init_no_load_config)(arg1);"
  , "}"
  , "Store *hs_bindgen_4ffc914eb31b9d6a ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const ***arg3"
  , ")"
  , "{"
  , "  return (nix_store_open)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bfdb1216bce846ed ("
  , "  Store *arg1"
  , ")"
  , "{"
  , "  (nix_store_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_44fabed7a439a0f0 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_uri)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_525cd4b335ab7886 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_storedir)(arg1, arg2, arg3, arg4);"
  , "}"
  , "StorePath *hs_bindgen_e02d7c4bfd0910e0 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_parse_path)(arg1, arg2, arg3);"
  , "}"
  , "_Bool hs_bindgen_e1e242bc82721b34 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_is_valid_path)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c01c27d95b136e6e ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath *arg3,"
  , "  nix_get_string_callback arg4,"
  , "  void *arg5"
  , ")"
  , "{"
  , "  return (nix_store_real_path)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_a9802cc3c6df0a70 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath *arg3,"
  , "  void *arg4,"
  , "  void (*arg5) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , ")"
  , "{"
  , "  return (nix_store_realise)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_bee147feeea58615 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_version)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_derivation *hs_bindgen_5827edc64aea0699 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_derivation_from_json)(arg1, arg2, arg3);"
  , "}"
  , "StorePath *hs_bindgen_0c533e3e8ee46804 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation *arg3"
  , ")"
  , "{"
  , "  return (nix_add_derivation)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_9c011660a28b0503 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath *arg4"
  , ")"
  , "{"
  , "  return (nix_store_copy_closure)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_bd94ce86e82d1a08 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3,"
  , "  _Bool arg4,"
  , "  _Bool arg5,"
  , "  _Bool arg6,"
  , "  void *arg7,"
  , "  void (*arg8) ("
  , "  nix_c_context *arg1,"
  , "  void *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , ")"
  , "{"
  , "  return (nix_store_get_fs_closure)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "nix_derivation *hs_bindgen_14f6c421556a8589 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_drv_from_store_path)(arg1, arg2, arg3);"
  , "}"
  , "StorePath *hs_bindgen_840632288be3866d ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_query_path_from_hash_part)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_bdd5d1d6ecf22875 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath const *arg4,"
  , "  _Bool arg5,"
  , "  _Bool arg6"
  , ")"
  , "{"
  , "  return (nix_store_copy_path)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_libstore_init@
foreign import ccall safe "hs_bindgen_4aef9d69fa7a2037" hs_bindgen_4aef9d69fa7a2037_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_libstore_init@
hs_bindgen_4aef9d69fa7a2037 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_4aef9d69fa7a2037 =
  RIP.fromFFIType hs_bindgen_4aef9d69fa7a2037_base

{-| __C declaration:__ @nix_libstore_init@

    __defined at:__ @nix_api_store.h 36:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libstore_init = hs_bindgen_4aef9d69fa7a2037

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_libstore_init_no_load_config@
foreign import ccall safe "hs_bindgen_1e6f6dad12ef8db9" hs_bindgen_1e6f6dad12ef8db9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_libstore_init_no_load_config@
hs_bindgen_1e6f6dad12ef8db9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_1e6f6dad12ef8db9 =
  RIP.fromFFIType hs_bindgen_1e6f6dad12ef8db9_base

{-| __C declaration:__ @nix_libstore_init_no_load_config@

    __defined at:__ @nix_api_store.h 43:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init_no_load_config ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libstore_init_no_load_config =
  hs_bindgen_1e6f6dad12ef8db9

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_open@
foreign import ccall safe "hs_bindgen_4ffc914eb31b9d6a" hs_bindgen_4ffc914eb31b9d6a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_open@
hs_bindgen_4ffc914eb31b9d6a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))
  -> IO (RIP.Ptr Store)
hs_bindgen_4ffc914eb31b9d6a =
  RIP.fromFFIType hs_bindgen_4ffc914eb31b9d6a_base

{-| __C declaration:__ @nix_store_open@

    __defined at:__ @nix_api_store.h 74:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_open ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @uri@
  -> RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))
     -- ^ __C declaration:__ @params@
  -> IO (RIP.Ptr Store)
nix_store_open = hs_bindgen_4ffc914eb31b9d6a

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_free@
foreign import ccall safe "hs_bindgen_bfdb1216bce846ed" hs_bindgen_bfdb1216bce846ed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_free@
hs_bindgen_bfdb1216bce846ed ::
     RIP.Ptr Store
  -> IO ()
hs_bindgen_bfdb1216bce846ed =
  RIP.fromFFIType hs_bindgen_bfdb1216bce846ed_base

{-| __C declaration:__ @nix_store_free@

    __defined at:__ @nix_api_store.h 83:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_free ::
     RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_store_free = hs_bindgen_bfdb1216bce846ed

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_uri@
foreign import ccall safe "hs_bindgen_44fabed7a439a0f0" hs_bindgen_44fabed7a439a0f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_uri@
hs_bindgen_44fabed7a439a0f0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_44fabed7a439a0f0 =
  RIP.fromFFIType hs_bindgen_44fabed7a439a0f0_base

{-| __C declaration:__ @nix_store_get_uri@

    __defined at:__ @nix_api_store.h 94:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_uri ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_store_get_uri = hs_bindgen_44fabed7a439a0f0

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_storedir@
foreign import ccall safe "hs_bindgen_525cd4b335ab7886" hs_bindgen_525cd4b335ab7886_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_storedir@
hs_bindgen_525cd4b335ab7886 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_525cd4b335ab7886 =
  RIP.fromFFIType hs_bindgen_525cd4b335ab7886_base

{-| __C declaration:__ @nix_store_get_storedir@

    __defined at:__ @nix_api_store.h 106:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_storedir ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_store_get_storedir = hs_bindgen_525cd4b335ab7886

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_parse_path@
foreign import ccall safe "hs_bindgen_e02d7c4bfd0910e0" hs_bindgen_e02d7c4bfd0910e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_parse_path@
hs_bindgen_e02d7c4bfd0910e0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_e02d7c4bfd0910e0 =
  RIP.fromFFIType hs_bindgen_e02d7c4bfd0910e0_base

{-| __C declaration:__ @nix_store_parse_path@

    __defined at:__ @nix_api_store.h 117:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_parse_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @path@
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
nix_store_parse_path = hs_bindgen_e02d7c4bfd0910e0

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_is_valid_path@
foreign import ccall safe "hs_bindgen_e1e242bc82721b34" hs_bindgen_e1e242bc82721b34_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_is_valid_path@
hs_bindgen_e1e242bc82721b34 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO RIP.CBool
hs_bindgen_e1e242bc82721b34 =
  RIP.fromFFIType hs_bindgen_e1e242bc82721b34_base

{-| __C declaration:__ @nix_store_is_valid_path@

    __defined at:__ @nix_api_store.h 127:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_is_valid_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> IO RIP.CBool
nix_store_is_valid_path = hs_bindgen_e1e242bc82721b34

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_real_path@
foreign import ccall safe "hs_bindgen_c01c27d95b136e6e" hs_bindgen_c01c27d95b136e6e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_real_path@
hs_bindgen_c01c27d95b136e6e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c01c27d95b136e6e =
  RIP.fromFFIType hs_bindgen_c01c27d95b136e6e_base

{-| __C declaration:__ @nix_store_real_path@

    __defined at:__ @nix_api_store.h 145:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_real_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_store_real_path = hs_bindgen_c01c27d95b136e6e

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_realise@
foreign import ccall safe "hs_bindgen_a9802cc3c6df0a70" hs_bindgen_a9802cc3c6df0a70_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_realise@
hs_bindgen_a9802cc3c6df0a70 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_a9802cc3c6df0a70 =
  RIP.fromFFIType hs_bindgen_a9802cc3c6df0a70_base

{-| __C declaration:__ @nix_store_realise@

    __defined at:__ @nix_api_store.h 166:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_realise ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_store_realise = hs_bindgen_a9802cc3c6df0a70

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_version@
foreign import ccall safe "hs_bindgen_bee147feeea58615" hs_bindgen_bee147feeea58615_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_version@
hs_bindgen_bee147feeea58615 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bee147feeea58615 =
  RIP.fromFFIType hs_bindgen_bee147feeea58615_base

{-| __C declaration:__ @nix_store_get_version@

    __defined at:__ @nix_api_store.h 186:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_version ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_store_get_version = hs_bindgen_bee147feeea58615

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_derivation_from_json@
foreign import ccall safe "hs_bindgen_5827edc64aea0699" hs_bindgen_5827edc64aea0699_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_derivation_from_json@
hs_bindgen_5827edc64aea0699 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
hs_bindgen_5827edc64aea0699 =
  RIP.fromFFIType hs_bindgen_5827edc64aea0699_base

{-| __C declaration:__ @nix_derivation_from_json@

    __defined at:__ @nix_api_store.h 202:18@

    __exported by:__ @nix_api_store.h@
-}
nix_derivation_from_json ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @json@
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
nix_derivation_from_json =
  hs_bindgen_5827edc64aea0699

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_add_derivation@
foreign import ccall safe "hs_bindgen_0c533e3e8ee46804" hs_bindgen_0c533e3e8ee46804_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_add_derivation@
hs_bindgen_0c533e3e8ee46804 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_0c533e3e8ee46804 =
  RIP.fromFFIType hs_bindgen_0c533e3e8ee46804_base

{-| __C declaration:__ @nix_add_derivation@

    __defined at:__ @nix_api_store.h 211:13@

    __exported by:__ @nix_api_store.h@
-}
nix_add_derivation ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation
     -- ^ __C declaration:__ @derivation@
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
nix_add_derivation = hs_bindgen_0c533e3e8ee46804

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_copy_closure@
foreign import ccall safe "hs_bindgen_9c011660a28b0503" hs_bindgen_9c011660a28b0503_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_copy_closure@
hs_bindgen_9c011660a28b0503 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9c011660a28b0503 =
  RIP.fromFFIType hs_bindgen_9c011660a28b0503_base

{-| __C declaration:__ @nix_store_copy_closure@

    __defined at:__ @nix_api_store.h 221:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_closure ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @srcStore@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @dstStore@
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> IO Generated.Nix.Util.Nix_err
nix_store_copy_closure = hs_bindgen_9c011660a28b0503

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_fs_closure@
foreign import ccall safe "hs_bindgen_bd94ce86e82d1a08" hs_bindgen_bd94ce86e82d1a08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> RIP.Word8
  -> RIP.Word8
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_get_fs_closure@
hs_bindgen_bd94ce86e82d1a08 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> RIP.CBool
  -> RIP.CBool
  -> RIP.CBool
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bd94ce86e82d1a08 =
  RIP.fromFFIType hs_bindgen_bd94ce86e82d1a08_base

{-| __C declaration:__ @nix_store_get_fs_closure@

    __defined at:__ @nix_api_store.h 242:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_fs_closure ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @store_path@
  -> RIP.CBool
     -- ^ __C declaration:__ @flip_direction@
  -> RIP.CBool
     -- ^ __C declaration:__ @include_outputs@
  -> RIP.CBool
     -- ^ __C declaration:__ @include_derivers@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_store_get_fs_closure =
  hs_bindgen_bd94ce86e82d1a08

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_drv_from_store_path@
foreign import ccall safe "hs_bindgen_14f6c421556a8589" hs_bindgen_14f6c421556a8589_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_drv_from_store_path@
hs_bindgen_14f6c421556a8589 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
hs_bindgen_14f6c421556a8589 =
  RIP.fromFFIType hs_bindgen_14f6c421556a8589_base

{-| __C declaration:__ @nix_store_drv_from_store_path@

    __defined at:__ @nix_api_store.h 260:18@

    __exported by:__ @nix_api_store.h@
-}
nix_store_drv_from_store_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
nix_store_drv_from_store_path =
  hs_bindgen_14f6c421556a8589

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_query_path_from_hash_part@
foreign import ccall safe "hs_bindgen_840632288be3866d" hs_bindgen_840632288be3866d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_query_path_from_hash_part@
hs_bindgen_840632288be3866d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_840632288be3866d =
  RIP.fromFFIType hs_bindgen_840632288be3866d_base

{-| __C declaration:__ @nix_store_query_path_from_hash_part@

    __defined at:__ @nix_api_store.h 271:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_query_path_from_hash_part ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @hash@
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
nix_store_query_path_from_hash_part =
  hs_bindgen_840632288be3866d

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_copy_path@
foreign import ccall safe "hs_bindgen_bdd5d1d6ecf22875" hs_bindgen_bdd5d1d6ecf22875_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> RIP.Word8
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_Safe_nix_store_copy_path@
hs_bindgen_bdd5d1d6ecf22875 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> RIP.CBool
  -> RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bdd5d1d6ecf22875 =
  RIP.fromFFIType hs_bindgen_bdd5d1d6ecf22875_base

{-| __C declaration:__ @nix_store_copy_path@

    __defined at:__ @nix_api_store.h 283:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @srcStore@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @dstStore@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @path@
  -> RIP.CBool
     -- ^ __C declaration:__ @repair@
  -> RIP.CBool
     -- ^ __C declaration:__ @checkSigs@
  -> IO Generated.Nix.Util.Nix_err
nix_store_copy_path = hs_bindgen_bdd5d1d6ecf22875
