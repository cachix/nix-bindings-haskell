{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Unsafe
    ( Generated.Nix.Store.Unsafe.nix_libstore_init
    , Generated.Nix.Store.Unsafe.nix_libstore_init_no_load_config
    , Generated.Nix.Store.Unsafe.nix_store_open
    , Generated.Nix.Store.Unsafe.nix_store_free
    , Generated.Nix.Store.Unsafe.nix_store_get_uri
    , Generated.Nix.Store.Unsafe.nix_store_get_storedir
    , Generated.Nix.Store.Unsafe.nix_store_parse_path
    , Generated.Nix.Store.Unsafe.nix_store_is_valid_path
    , Generated.Nix.Store.Unsafe.nix_store_real_path
    , Generated.Nix.Store.Unsafe.nix_store_realise
    , Generated.Nix.Store.Unsafe.nix_store_get_version
    , Generated.Nix.Store.Unsafe.nix_derivation_from_json
    , Generated.Nix.Store.Unsafe.nix_add_derivation
    , Generated.Nix.Store.Unsafe.nix_store_copy_closure
    , Generated.Nix.Store.Unsafe.nix_store_get_fs_closure
    , Generated.Nix.Store.Unsafe.nix_store_drv_from_store_path
    , Generated.Nix.Store.Unsafe.nix_store_query_path_from_hash_part
    , Generated.Nix.Store.Unsafe.nix_store_copy_path
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
  , "nix_err hs_bindgen_2a36a0140d00aac2 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libstore_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_9f0219db238b1969 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libstore_init_no_load_config)(arg1);"
  , "}"
  , "Store *hs_bindgen_9eb137f4f15ffa33 ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const ***arg3"
  , ")"
  , "{"
  , "  return (nix_store_open)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2f7782a18905382c ("
  , "  Store *arg1"
  , ")"
  , "{"
  , "  (nix_store_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_0df6e0cf20066b14 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_uri)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_49afc3c4cc30b245 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_storedir)(arg1, arg2, arg3, arg4);"
  , "}"
  , "StorePath *hs_bindgen_5987dccd2557153c ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_parse_path)(arg1, arg2, arg3);"
  , "}"
  , "_Bool hs_bindgen_0dceef9c0aa5c79e ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_is_valid_path)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_3522f6824f7db7d1 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath *arg3,"
  , "  nix_get_string_callback arg4,"
  , "  void *arg5"
  , ")"
  , "{"
  , "  return (nix_store_real_path)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_8e269421402d2b63 ("
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
  , "nix_err hs_bindgen_ecf33a8ed132b2d2 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_store_get_version)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_derivation *hs_bindgen_9de384aa6403e4c6 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_derivation_from_json)(arg1, arg2, arg3);"
  , "}"
  , "StorePath *hs_bindgen_2606a2cf34d54ea4 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation *arg3"
  , ")"
  , "{"
  , "  return (nix_add_derivation)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_79f638a74ed2972a ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath *arg4"
  , ")"
  , "{"
  , "  return (nix_store_copy_closure)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_05ce9d7ce603b41e ("
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
  , "nix_derivation *hs_bindgen_df38ef15306a2ddd ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_drv_from_store_path)(arg1, arg2, arg3);"
  , "}"
  , "StorePath *hs_bindgen_abc9c719130d2312 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_store_query_path_from_hash_part)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_1b3280cfa8978709 ("
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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_libstore_init@
foreign import ccall unsafe "hs_bindgen_2a36a0140d00aac2" hs_bindgen_2a36a0140d00aac2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_libstore_init@
hs_bindgen_2a36a0140d00aac2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_2a36a0140d00aac2 =
  RIP.fromFFIType hs_bindgen_2a36a0140d00aac2_base

{-| __C declaration:__ @nix_libstore_init@

    __defined at:__ @nix_api_store.h 37:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libstore_init = hs_bindgen_2a36a0140d00aac2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_libstore_init_no_load_config@
foreign import ccall unsafe "hs_bindgen_9f0219db238b1969" hs_bindgen_9f0219db238b1969_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_libstore_init_no_load_config@
hs_bindgen_9f0219db238b1969 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9f0219db238b1969 =
  RIP.fromFFIType hs_bindgen_9f0219db238b1969_base

{-| __C declaration:__ @nix_libstore_init_no_load_config@

    __defined at:__ @nix_api_store.h 44:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init_no_load_config ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libstore_init_no_load_config =
  hs_bindgen_9f0219db238b1969

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_open@
foreign import ccall unsafe "hs_bindgen_9eb137f4f15ffa33" hs_bindgen_9eb137f4f15ffa33_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_open@
hs_bindgen_9eb137f4f15ffa33 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))
  -> IO (RIP.Ptr Store)
hs_bindgen_9eb137f4f15ffa33 =
  RIP.fromFFIType hs_bindgen_9eb137f4f15ffa33_base

{-| __C declaration:__ @nix_store_open@

    __defined at:__ @nix_api_store.h 75:9@

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
nix_store_open = hs_bindgen_9eb137f4f15ffa33

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_free@
foreign import ccall unsafe "hs_bindgen_2f7782a18905382c" hs_bindgen_2f7782a18905382c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_free@
hs_bindgen_2f7782a18905382c ::
     RIP.Ptr Store
  -> IO ()
hs_bindgen_2f7782a18905382c =
  RIP.fromFFIType hs_bindgen_2f7782a18905382c_base

{-| __C declaration:__ @nix_store_free@

    __defined at:__ @nix_api_store.h 84:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_free ::
     RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_store_free = hs_bindgen_2f7782a18905382c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_uri@
foreign import ccall unsafe "hs_bindgen_0df6e0cf20066b14" hs_bindgen_0df6e0cf20066b14_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_uri@
hs_bindgen_0df6e0cf20066b14 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0df6e0cf20066b14 =
  RIP.fromFFIType hs_bindgen_0df6e0cf20066b14_base

{-| __C declaration:__ @nix_store_get_uri@

    __defined at:__ @nix_api_store.h 95:9@

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
nix_store_get_uri = hs_bindgen_0df6e0cf20066b14

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_storedir@
foreign import ccall unsafe "hs_bindgen_49afc3c4cc30b245" hs_bindgen_49afc3c4cc30b245_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_storedir@
hs_bindgen_49afc3c4cc30b245 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_49afc3c4cc30b245 =
  RIP.fromFFIType hs_bindgen_49afc3c4cc30b245_base

{-| __C declaration:__ @nix_store_get_storedir@

    __defined at:__ @nix_api_store.h 107:1@

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
nix_store_get_storedir = hs_bindgen_49afc3c4cc30b245

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_parse_path@
foreign import ccall unsafe "hs_bindgen_5987dccd2557153c" hs_bindgen_5987dccd2557153c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_parse_path@
hs_bindgen_5987dccd2557153c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_5987dccd2557153c =
  RIP.fromFFIType hs_bindgen_5987dccd2557153c_base

{-| __C declaration:__ @nix_store_parse_path@

    __defined at:__ @nix_api_store.h 118:13@

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
nix_store_parse_path = hs_bindgen_5987dccd2557153c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_is_valid_path@
foreign import ccall unsafe "hs_bindgen_0dceef9c0aa5c79e" hs_bindgen_0dceef9c0aa5c79e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_is_valid_path@
hs_bindgen_0dceef9c0aa5c79e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO RIP.CBool
hs_bindgen_0dceef9c0aa5c79e =
  RIP.fromFFIType hs_bindgen_0dceef9c0aa5c79e_base

{-| __C declaration:__ @nix_store_is_valid_path@

    __defined at:__ @nix_api_store.h 128:6@

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
nix_store_is_valid_path = hs_bindgen_0dceef9c0aa5c79e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_real_path@
foreign import ccall unsafe "hs_bindgen_3522f6824f7db7d1" hs_bindgen_3522f6824f7db7d1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_real_path@
hs_bindgen_3522f6824f7db7d1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_3522f6824f7db7d1 =
  RIP.fromFFIType hs_bindgen_3522f6824f7db7d1_base

{-| __C declaration:__ @nix_store_real_path@

    __defined at:__ @nix_api_store.h 146:9@

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
nix_store_real_path = hs_bindgen_3522f6824f7db7d1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_realise@
foreign import ccall unsafe "hs_bindgen_8e269421402d2b63" hs_bindgen_8e269421402d2b63_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_realise@
hs_bindgen_8e269421402d2b63 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8e269421402d2b63 =
  RIP.fromFFIType hs_bindgen_8e269421402d2b63_base

{-| __C declaration:__ @nix_store_realise@

    __defined at:__ @nix_api_store.h 167:9@

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
nix_store_realise = hs_bindgen_8e269421402d2b63

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_version@
foreign import ccall unsafe "hs_bindgen_ecf33a8ed132b2d2" hs_bindgen_ecf33a8ed132b2d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_version@
hs_bindgen_ecf33a8ed132b2d2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ecf33a8ed132b2d2 =
  RIP.fromFFIType hs_bindgen_ecf33a8ed132b2d2_base

{-| __C declaration:__ @nix_store_get_version@

    __defined at:__ @nix_api_store.h 187:1@

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
nix_store_get_version = hs_bindgen_ecf33a8ed132b2d2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_derivation_from_json@
foreign import ccall unsafe "hs_bindgen_9de384aa6403e4c6" hs_bindgen_9de384aa6403e4c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_derivation_from_json@
hs_bindgen_9de384aa6403e4c6 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
hs_bindgen_9de384aa6403e4c6 =
  RIP.fromFFIType hs_bindgen_9de384aa6403e4c6_base

{-| __C declaration:__ @nix_derivation_from_json@

    __defined at:__ @nix_api_store.h 203:18@

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
  hs_bindgen_9de384aa6403e4c6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_add_derivation@
foreign import ccall unsafe "hs_bindgen_2606a2cf34d54ea4" hs_bindgen_2606a2cf34d54ea4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_add_derivation@
hs_bindgen_2606a2cf34d54ea4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_2606a2cf34d54ea4 =
  RIP.fromFFIType hs_bindgen_2606a2cf34d54ea4_base

{-| __C declaration:__ @nix_add_derivation@

    __defined at:__ @nix_api_store.h 212:13@

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
nix_add_derivation = hs_bindgen_2606a2cf34d54ea4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_copy_closure@
foreign import ccall unsafe "hs_bindgen_79f638a74ed2972a" hs_bindgen_79f638a74ed2972a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_copy_closure@
hs_bindgen_79f638a74ed2972a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Store
  -> RIP.Ptr Generated.Nix.Store.Path.StorePath
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_79f638a74ed2972a =
  RIP.fromFFIType hs_bindgen_79f638a74ed2972a_base

{-| __C declaration:__ @nix_store_copy_closure@

    __defined at:__ @nix_api_store.h 222:9@

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
nix_store_copy_closure = hs_bindgen_79f638a74ed2972a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_fs_closure@
foreign import ccall unsafe "hs_bindgen_05ce9d7ce603b41e" hs_bindgen_05ce9d7ce603b41e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> RIP.Word8
  -> RIP.Word8
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_get_fs_closure@
hs_bindgen_05ce9d7ce603b41e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> RIP.CBool
  -> RIP.CBool
  -> RIP.CBool
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_05ce9d7ce603b41e =
  RIP.fromFFIType hs_bindgen_05ce9d7ce603b41e_base

{-| __C declaration:__ @nix_store_get_fs_closure@

    __defined at:__ @nix_api_store.h 243:9@

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
  hs_bindgen_05ce9d7ce603b41e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_drv_from_store_path@
foreign import ccall unsafe "hs_bindgen_df38ef15306a2ddd" hs_bindgen_df38ef15306a2ddd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_drv_from_store_path@
hs_bindgen_df38ef15306a2ddd ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)
hs_bindgen_df38ef15306a2ddd =
  RIP.fromFFIType hs_bindgen_df38ef15306a2ddd_base

{-| __C declaration:__ @nix_store_drv_from_store_path@

    __defined at:__ @nix_api_store.h 261:18@

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
  hs_bindgen_df38ef15306a2ddd

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_query_path_from_hash_part@
foreign import ccall unsafe "hs_bindgen_abc9c719130d2312" hs_bindgen_abc9c719130d2312_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_query_path_from_hash_part@
hs_bindgen_abc9c719130d2312 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)
hs_bindgen_abc9c719130d2312 =
  RIP.fromFFIType hs_bindgen_abc9c719130d2312_base

{-| __C declaration:__ @nix_store_query_path_from_hash_part@

    __defined at:__ @nix_api_store.h 272:13@

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
  hs_bindgen_abc9c719130d2312

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_copy_path@
foreign import ccall unsafe "hs_bindgen_1b3280cfa8978709" hs_bindgen_1b3280cfa8978709_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> RIP.Word8
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_Unsafe_nix_store_copy_path@
hs_bindgen_1b3280cfa8978709 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> RIP.CBool
  -> RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_1b3280cfa8978709 =
  RIP.fromFFIType hs_bindgen_1b3280cfa8978709_base

{-| __C declaration:__ @nix_store_copy_path@

    __defined at:__ @nix_api_store.h 284:9@

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
nix_store_copy_path = hs_bindgen_1b3280cfa8978709
