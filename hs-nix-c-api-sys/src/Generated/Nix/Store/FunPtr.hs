{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.FunPtr
    ( Generated.Nix.Store.FunPtr.nix_libstore_init
    , Generated.Nix.Store.FunPtr.nix_libstore_init_no_load_config
    , Generated.Nix.Store.FunPtr.nix_store_open
    , Generated.Nix.Store.FunPtr.nix_store_free
    , Generated.Nix.Store.FunPtr.nix_store_get_uri
    , Generated.Nix.Store.FunPtr.nix_store_get_storedir
    , Generated.Nix.Store.FunPtr.nix_store_parse_path
    , Generated.Nix.Store.FunPtr.nix_store_is_valid_path
    , Generated.Nix.Store.FunPtr.nix_store_real_path
    , Generated.Nix.Store.FunPtr.nix_store_realise
    , Generated.Nix.Store.FunPtr.nix_store_get_version
    , Generated.Nix.Store.FunPtr.nix_derivation_from_json
    , Generated.Nix.Store.FunPtr.nix_add_derivation
    , Generated.Nix.Store.FunPtr.nix_store_copy_closure
    , Generated.Nix.Store.FunPtr.nix_store_get_fs_closure
    , Generated.Nix.Store.FunPtr.nix_store_drv_from_store_path
    , Generated.Nix.Store.FunPtr.nix_store_query_path_from_hash_part
    , Generated.Nix.Store.FunPtr.nix_store_copy_path
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
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_02d00187661efbbc (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libstore_init;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_f55266f611791460 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libstore_init_no_load_config;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_open */"
  , "__attribute__ ((const))"
  , "Store *(*hs_bindgen_860ac600475b6304 (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const ***arg3"
  , ")"
  , "{"
  , "  return &nix_store_open;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c3589b4c0572e634 (void)) ("
  , "  Store *arg1"
  , ")"
  , "{"
  , "  return &nix_store_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_21b2883e24a41379 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_uri;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6b8e9a9f40467b82 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_storedir;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_80b0befda3dc2f98 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_parse_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_ad2e100d8fa2ff42 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_is_valid_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_real_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_7de1a1e634b70a4f (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath *arg3,"
  , "  nix_get_string_callback arg4,"
  , "  void *arg5"
  , ")"
  , "{"
  , "  return &nix_store_real_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_realise */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_7b102a9612771b1a (void)) ("
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
  , "  return &nix_store_realise;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_version */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8e52916baf3065a9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_version;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_76c33540361534d2 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_derivation_from_json;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_add_derivation */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_46fa3826a4b54a2c (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation *arg3"
  , ")"
  , "{"
  , "  return &nix_add_derivation;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_38805e4c5673664c (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath *arg4"
  , ")"
  , "{"
  , "  return &nix_store_copy_closure;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_55b3518ab78ae1f5 (void)) ("
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
  , "  return &nix_store_get_fs_closure;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_16455b5c3928ab8a (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_drv_from_store_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_5b25692f7fab62ef (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_query_path_from_hash_part;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_55c1bcc80d48edc4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath const *arg4,"
  , "  _Bool arg5,"
  , "  _Bool arg6"
  , ")"
  , "{"
  , "  return &nix_store_copy_path;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init@
foreign import ccall unsafe "hs_bindgen_02d00187661efbbc" hs_bindgen_02d00187661efbbc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init@
hs_bindgen_02d00187661efbbc :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_02d00187661efbbc =
  RIP.fromFFIType hs_bindgen_02d00187661efbbc_base

{-# NOINLINE nix_libstore_init #-}
{-| __C declaration:__ @nix_libstore_init@

    __defined at:__ @nix_api_store.h 36:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libstore_init =
  RIP.unsafePerformIO hs_bindgen_02d00187661efbbc

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config@
foreign import ccall unsafe "hs_bindgen_f55266f611791460" hs_bindgen_f55266f611791460_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config@
hs_bindgen_f55266f611791460 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_f55266f611791460 =
  RIP.fromFFIType hs_bindgen_f55266f611791460_base

{-# NOINLINE nix_libstore_init_no_load_config #-}
{-| __C declaration:__ @nix_libstore_init_no_load_config@

    __defined at:__ @nix_api_store.h 43:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init_no_load_config :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libstore_init_no_load_config =
  RIP.unsafePerformIO hs_bindgen_f55266f611791460

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_open@
foreign import ccall unsafe "hs_bindgen_860ac600475b6304" hs_bindgen_860ac600475b6304_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_open@
hs_bindgen_860ac600475b6304 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))) -> IO (RIP.Ptr Store)))
hs_bindgen_860ac600475b6304 =
  RIP.fromFFIType hs_bindgen_860ac600475b6304_base

{-# NOINLINE nix_store_open #-}
{-| __C declaration:__ @nix_store_open@

    __defined at:__ @nix_api_store.h 74:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_open :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))) -> IO (RIP.Ptr Store))
nix_store_open =
  RIP.unsafePerformIO hs_bindgen_860ac600475b6304

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_free@
foreign import ccall unsafe "hs_bindgen_c3589b4c0572e634" hs_bindgen_c3589b4c0572e634_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_free@
hs_bindgen_c3589b4c0572e634 :: IO (RIP.FunPtr ((RIP.Ptr Store) -> IO ()))
hs_bindgen_c3589b4c0572e634 =
  RIP.fromFFIType hs_bindgen_c3589b4c0572e634_base

{-# NOINLINE nix_store_free #-}
{-| __C declaration:__ @nix_store_free@

    __defined at:__ @nix_api_store.h 83:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_free :: RIP.FunPtr ((RIP.Ptr Store) -> IO ())
nix_store_free =
  RIP.unsafePerformIO hs_bindgen_c3589b4c0572e634

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri@
foreign import ccall unsafe "hs_bindgen_21b2883e24a41379" hs_bindgen_21b2883e24a41379_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri@
hs_bindgen_21b2883e24a41379 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_21b2883e24a41379 =
  RIP.fromFFIType hs_bindgen_21b2883e24a41379_base

{-# NOINLINE nix_store_get_uri #-}
{-| __C declaration:__ @nix_store_get_uri@

    __defined at:__ @nix_api_store.h 94:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_uri :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_uri =
  RIP.unsafePerformIO hs_bindgen_21b2883e24a41379

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir@
foreign import ccall unsafe "hs_bindgen_6b8e9a9f40467b82" hs_bindgen_6b8e9a9f40467b82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir@
hs_bindgen_6b8e9a9f40467b82 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6b8e9a9f40467b82 =
  RIP.fromFFIType hs_bindgen_6b8e9a9f40467b82_base

{-# NOINLINE nix_store_get_storedir #-}
{-| __C declaration:__ @nix_store_get_storedir@

    __defined at:__ @nix_api_store.h 106:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_storedir :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_storedir =
  RIP.unsafePerformIO hs_bindgen_6b8e9a9f40467b82

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path@
foreign import ccall unsafe "hs_bindgen_80b0befda3dc2f98" hs_bindgen_80b0befda3dc2f98_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path@
hs_bindgen_80b0befda3dc2f98 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_80b0befda3dc2f98 =
  RIP.fromFFIType hs_bindgen_80b0befda3dc2f98_base

{-# NOINLINE nix_store_parse_path #-}
{-| __C declaration:__ @nix_store_parse_path@

    __defined at:__ @nix_api_store.h 117:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_parse_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_store_parse_path =
  RIP.unsafePerformIO hs_bindgen_80b0befda3dc2f98

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path@
foreign import ccall unsafe "hs_bindgen_ad2e100d8fa2ff42" hs_bindgen_ad2e100d8fa2ff42_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path@
hs_bindgen_ad2e100d8fa2ff42 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO RIP.CBool))
hs_bindgen_ad2e100d8fa2ff42 =
  RIP.fromFFIType hs_bindgen_ad2e100d8fa2ff42_base

{-# NOINLINE nix_store_is_valid_path #-}
{-| __C declaration:__ @nix_store_is_valid_path@

    __defined at:__ @nix_api_store.h 127:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_is_valid_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO RIP.CBool)
nix_store_is_valid_path =
  RIP.unsafePerformIO hs_bindgen_ad2e100d8fa2ff42

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_real_path@
foreign import ccall unsafe "hs_bindgen_7de1a1e634b70a4f" hs_bindgen_7de1a1e634b70a4f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_real_path@
hs_bindgen_7de1a1e634b70a4f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_7de1a1e634b70a4f =
  RIP.fromFFIType hs_bindgen_7de1a1e634b70a4f_base

{-# NOINLINE nix_store_real_path #-}
{-| __C declaration:__ @nix_store_real_path@

    __defined at:__ @nix_api_store.h 145:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_real_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_real_path =
  RIP.unsafePerformIO hs_bindgen_7de1a1e634b70a4f

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_realise@
foreign import ccall unsafe "hs_bindgen_7b102a9612771b1a" hs_bindgen_7b102a9612771b1a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_realise@
hs_bindgen_7b102a9612771b1a :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_7b102a9612771b1a =
  RIP.fromFFIType hs_bindgen_7b102a9612771b1a_base

{-# NOINLINE nix_store_realise #-}
{-| __C declaration:__ @nix_store_realise@

    __defined at:__ @nix_api_store.h 166:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_realise :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_store_realise =
  RIP.unsafePerformIO hs_bindgen_7b102a9612771b1a

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_version@
foreign import ccall unsafe "hs_bindgen_8e52916baf3065a9" hs_bindgen_8e52916baf3065a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_version@
hs_bindgen_8e52916baf3065a9 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_8e52916baf3065a9 =
  RIP.fromFFIType hs_bindgen_8e52916baf3065a9_base

{-# NOINLINE nix_store_get_version #-}
{-| __C declaration:__ @nix_store_get_version@

    __defined at:__ @nix_api_store.h 186:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_version :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_version =
  RIP.unsafePerformIO hs_bindgen_8e52916baf3065a9

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json@
foreign import ccall unsafe "hs_bindgen_76c33540361534d2" hs_bindgen_76c33540361534d2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json@
hs_bindgen_76c33540361534d2 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)))
hs_bindgen_76c33540361534d2 =
  RIP.fromFFIType hs_bindgen_76c33540361534d2_base

{-# NOINLINE nix_derivation_from_json #-}
{-| __C declaration:__ @nix_derivation_from_json@

    __defined at:__ @nix_api_store.h 202:18@

    __exported by:__ @nix_api_store.h@
-}
nix_derivation_from_json :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation))
nix_derivation_from_json =
  RIP.unsafePerformIO hs_bindgen_76c33540361534d2

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_add_derivation@
foreign import ccall unsafe "hs_bindgen_46fa3826a4b54a2c" hs_bindgen_46fa3826a4b54a2c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_add_derivation@
hs_bindgen_46fa3826a4b54a2c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_46fa3826a4b54a2c =
  RIP.fromFFIType hs_bindgen_46fa3826a4b54a2c_base

{-# NOINLINE nix_add_derivation #-}
{-| __C declaration:__ @nix_add_derivation@

    __defined at:__ @nix_api_store.h 211:13@

    __exported by:__ @nix_api_store.h@
-}
nix_add_derivation :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_add_derivation =
  RIP.unsafePerformIO hs_bindgen_46fa3826a4b54a2c

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure@
foreign import ccall unsafe "hs_bindgen_38805e4c5673664c" hs_bindgen_38805e4c5673664c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure@
hs_bindgen_38805e4c5673664c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_38805e4c5673664c =
  RIP.fromFFIType hs_bindgen_38805e4c5673664c_base

{-# NOINLINE nix_store_copy_closure #-}
{-| __C declaration:__ @nix_store_copy_closure@

    __defined at:__ @nix_api_store.h 221:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_closure :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> IO Generated.Nix.Util.Nix_err)
nix_store_copy_closure =
  RIP.unsafePerformIO hs_bindgen_38805e4c5673664c

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure@
foreign import ccall unsafe "hs_bindgen_55b3518ab78ae1f5" hs_bindgen_55b3518ab78ae1f5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure@
hs_bindgen_55b3518ab78ae1f5 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> RIP.CBool -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_55b3518ab78ae1f5 =
  RIP.fromFFIType hs_bindgen_55b3518ab78ae1f5_base

{-# NOINLINE nix_store_get_fs_closure #-}
{-| __C declaration:__ @nix_store_get_fs_closure@

    __defined at:__ @nix_api_store.h 242:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_fs_closure :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> RIP.CBool -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_fs_closure =
  RIP.unsafePerformIO hs_bindgen_55b3518ab78ae1f5

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path@
foreign import ccall unsafe "hs_bindgen_16455b5c3928ab8a" hs_bindgen_16455b5c3928ab8a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path@
hs_bindgen_16455b5c3928ab8a :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)))
hs_bindgen_16455b5c3928ab8a =
  RIP.fromFFIType hs_bindgen_16455b5c3928ab8a_base

{-# NOINLINE nix_store_drv_from_store_path #-}
{-| __C declaration:__ @nix_store_drv_from_store_path@

    __defined at:__ @nix_api_store.h 260:18@

    __exported by:__ @nix_api_store.h@
-}
nix_store_drv_from_store_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation))
nix_store_drv_from_store_path =
  RIP.unsafePerformIO hs_bindgen_16455b5c3928ab8a

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part@
foreign import ccall unsafe "hs_bindgen_5b25692f7fab62ef" hs_bindgen_5b25692f7fab62ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part@
hs_bindgen_5b25692f7fab62ef :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_5b25692f7fab62ef =
  RIP.fromFFIType hs_bindgen_5b25692f7fab62ef_base

{-# NOINLINE nix_store_query_path_from_hash_part #-}
{-| __C declaration:__ @nix_store_query_path_from_hash_part@

    __defined at:__ @nix_api_store.h 271:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_query_path_from_hash_part :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_store_query_path_from_hash_part =
  RIP.unsafePerformIO hs_bindgen_5b25692f7fab62ef

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path@
foreign import ccall unsafe "hs_bindgen_55c1bcc80d48edc4" hs_bindgen_55c1bcc80d48edc4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path@
hs_bindgen_55c1bcc80d48edc4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_55c1bcc80d48edc4 =
  RIP.fromFFIType hs_bindgen_55c1bcc80d48edc4_base

{-# NOINLINE nix_store_copy_path #-}
{-| __C declaration:__ @nix_store_copy_path@

    __defined at:__ @nix_api_store.h 283:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> IO Generated.Nix.Util.Nix_err)
nix_store_copy_path =
  RIP.unsafePerformIO hs_bindgen_55c1bcc80d48edc4
