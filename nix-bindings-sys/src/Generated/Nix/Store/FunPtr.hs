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
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_48901ef0423f6786 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libstore_init;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_26abf3771e089698 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libstore_init_no_load_config;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_open */"
  , "__attribute__ ((const))"
  , "Store *(*hs_bindgen_258cdb012d4db97c (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const ***arg3"
  , ")"
  , "{"
  , "  return &nix_store_open;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a484223b7bff176 (void)) ("
  , "  Store *arg1"
  , ")"
  , "{"
  , "  return &nix_store_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_db2d8a973391aadf (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_uri;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_790a2c65513492e7 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_storedir;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_ea5fc3e258144b10 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_parse_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_64d23f33c8d9bef0 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_is_valid_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_real_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3c76c3ca047fd07b (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath *arg3,"
  , "  nix_get_string_callback arg4,"
  , "  void *arg5"
  , ")"
  , "{"
  , "  return &nix_store_real_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_realise */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_97f9da4353562419 (void)) ("
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
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_version */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_32f2221b460be8ab (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_store_get_version;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_a0274eff7f45e747 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_derivation_from_json;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_add_derivation */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_77eb9e69298beb7c (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation *arg3"
  , ")"
  , "{"
  , "  return &nix_add_derivation;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_7bef819e4ca74c13 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  Store *arg3,"
  , "  StorePath *arg4"
  , ")"
  , "{"
  , "  return &nix_store_copy_closure;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_aefe59c5c33894af (void)) ("
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
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_41f5c58b45e314fc (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_drv_from_store_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_003dc20b64adc4b9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_query_path_from_hash_part;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6611da5414883d35 (void)) ("
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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init@
foreign import ccall unsafe "hs_bindgen_48901ef0423f6786" hs_bindgen_48901ef0423f6786_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init@
hs_bindgen_48901ef0423f6786 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_48901ef0423f6786 =
  RIP.fromFFIType hs_bindgen_48901ef0423f6786_base

{-# NOINLINE nix_libstore_init #-}
{-| __C declaration:__ @nix_libstore_init@

    __defined at:__ @nix_api_store.h 37:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libstore_init =
  RIP.unsafePerformIO hs_bindgen_48901ef0423f6786

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config@
foreign import ccall unsafe "hs_bindgen_26abf3771e089698" hs_bindgen_26abf3771e089698_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_libstore_init_no_load_config@
hs_bindgen_26abf3771e089698 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_26abf3771e089698 =
  RIP.fromFFIType hs_bindgen_26abf3771e089698_base

{-# NOINLINE nix_libstore_init_no_load_config #-}
{-| __C declaration:__ @nix_libstore_init_no_load_config@

    __defined at:__ @nix_api_store.h 44:9@

    __exported by:__ @nix_api_store.h@
-}
nix_libstore_init_no_load_config :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libstore_init_no_load_config =
  RIP.unsafePerformIO hs_bindgen_26abf3771e089698

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_open@
foreign import ccall unsafe "hs_bindgen_258cdb012d4db97c" hs_bindgen_258cdb012d4db97c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_open@
hs_bindgen_258cdb012d4db97c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))) -> IO (RIP.Ptr Store)))
hs_bindgen_258cdb012d4db97c =
  RIP.fromFFIType hs_bindgen_258cdb012d4db97c_base

{-# NOINLINE nix_store_open #-}
{-| __C declaration:__ @nix_store_open@

    __defined at:__ @nix_api_store.h 75:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_open :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (RIP.Ptr (PtrConst.PtrConst RIP.CChar))) -> IO (RIP.Ptr Store))
nix_store_open =
  RIP.unsafePerformIO hs_bindgen_258cdb012d4db97c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_free@
foreign import ccall unsafe "hs_bindgen_0a484223b7bff176" hs_bindgen_0a484223b7bff176_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_free@
hs_bindgen_0a484223b7bff176 :: IO (RIP.FunPtr ((RIP.Ptr Store) -> IO ()))
hs_bindgen_0a484223b7bff176 =
  RIP.fromFFIType hs_bindgen_0a484223b7bff176_base

{-# NOINLINE nix_store_free #-}
{-| __C declaration:__ @nix_store_free@

    __defined at:__ @nix_api_store.h 84:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_free :: RIP.FunPtr ((RIP.Ptr Store) -> IO ())
nix_store_free =
  RIP.unsafePerformIO hs_bindgen_0a484223b7bff176

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri@
foreign import ccall unsafe "hs_bindgen_db2d8a973391aadf" hs_bindgen_db2d8a973391aadf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_uri@
hs_bindgen_db2d8a973391aadf :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_db2d8a973391aadf =
  RIP.fromFFIType hs_bindgen_db2d8a973391aadf_base

{-# NOINLINE nix_store_get_uri #-}
{-| __C declaration:__ @nix_store_get_uri@

    __defined at:__ @nix_api_store.h 95:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_uri :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_uri =
  RIP.unsafePerformIO hs_bindgen_db2d8a973391aadf

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir@
foreign import ccall unsafe "hs_bindgen_790a2c65513492e7" hs_bindgen_790a2c65513492e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_storedir@
hs_bindgen_790a2c65513492e7 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_790a2c65513492e7 =
  RIP.fromFFIType hs_bindgen_790a2c65513492e7_base

{-# NOINLINE nix_store_get_storedir #-}
{-| __C declaration:__ @nix_store_get_storedir@

    __defined at:__ @nix_api_store.h 107:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_storedir :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_storedir =
  RIP.unsafePerformIO hs_bindgen_790a2c65513492e7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path@
foreign import ccall unsafe "hs_bindgen_ea5fc3e258144b10" hs_bindgen_ea5fc3e258144b10_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_parse_path@
hs_bindgen_ea5fc3e258144b10 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_ea5fc3e258144b10 =
  RIP.fromFFIType hs_bindgen_ea5fc3e258144b10_base

{-# NOINLINE nix_store_parse_path #-}
{-| __C declaration:__ @nix_store_parse_path@

    __defined at:__ @nix_api_store.h 118:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_parse_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_store_parse_path =
  RIP.unsafePerformIO hs_bindgen_ea5fc3e258144b10

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path@
foreign import ccall unsafe "hs_bindgen_64d23f33c8d9bef0" hs_bindgen_64d23f33c8d9bef0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_is_valid_path@
hs_bindgen_64d23f33c8d9bef0 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO RIP.CBool))
hs_bindgen_64d23f33c8d9bef0 =
  RIP.fromFFIType hs_bindgen_64d23f33c8d9bef0_base

{-# NOINLINE nix_store_is_valid_path #-}
{-| __C declaration:__ @nix_store_is_valid_path@

    __defined at:__ @nix_api_store.h 128:6@

    __exported by:__ @nix_api_store.h@
-}
nix_store_is_valid_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO RIP.CBool)
nix_store_is_valid_path =
  RIP.unsafePerformIO hs_bindgen_64d23f33c8d9bef0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_real_path@
foreign import ccall unsafe "hs_bindgen_3c76c3ca047fd07b" hs_bindgen_3c76c3ca047fd07b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_real_path@
hs_bindgen_3c76c3ca047fd07b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3c76c3ca047fd07b =
  RIP.fromFFIType hs_bindgen_3c76c3ca047fd07b_base

{-# NOINLINE nix_store_real_path #-}
{-| __C declaration:__ @nix_store_real_path@

    __defined at:__ @nix_api_store.h 146:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_real_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_real_path =
  RIP.unsafePerformIO hs_bindgen_3c76c3ca047fd07b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_realise@
foreign import ccall unsafe "hs_bindgen_97f9da4353562419" hs_bindgen_97f9da4353562419_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_realise@
hs_bindgen_97f9da4353562419 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_97f9da4353562419 =
  RIP.fromFFIType hs_bindgen_97f9da4353562419_base

{-# NOINLINE nix_store_realise #-}
{-| __C declaration:__ @nix_store_realise@

    __defined at:__ @nix_api_store.h 167:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_realise :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_store_realise =
  RIP.unsafePerformIO hs_bindgen_97f9da4353562419

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_version@
foreign import ccall unsafe "hs_bindgen_32f2221b460be8ab" hs_bindgen_32f2221b460be8ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_version@
hs_bindgen_32f2221b460be8ab :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_32f2221b460be8ab =
  RIP.fromFFIType hs_bindgen_32f2221b460be8ab_base

{-# NOINLINE nix_store_get_version #-}
{-| __C declaration:__ @nix_store_get_version@

    __defined at:__ @nix_api_store.h 187:1@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_version :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_version =
  RIP.unsafePerformIO hs_bindgen_32f2221b460be8ab

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json@
foreign import ccall unsafe "hs_bindgen_a0274eff7f45e747" hs_bindgen_a0274eff7f45e747_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_derivation_from_json@
hs_bindgen_a0274eff7f45e747 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)))
hs_bindgen_a0274eff7f45e747 =
  RIP.fromFFIType hs_bindgen_a0274eff7f45e747_base

{-# NOINLINE nix_derivation_from_json #-}
{-| __C declaration:__ @nix_derivation_from_json@

    __defined at:__ @nix_api_store.h 203:18@

    __exported by:__ @nix_api_store.h@
-}
nix_derivation_from_json :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation))
nix_derivation_from_json =
  RIP.unsafePerformIO hs_bindgen_a0274eff7f45e747

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_add_derivation@
foreign import ccall unsafe "hs_bindgen_77eb9e69298beb7c" hs_bindgen_77eb9e69298beb7c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_add_derivation@
hs_bindgen_77eb9e69298beb7c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_77eb9e69298beb7c =
  RIP.fromFFIType hs_bindgen_77eb9e69298beb7c_base

{-# NOINLINE nix_add_derivation #-}
{-| __C declaration:__ @nix_add_derivation@

    __defined at:__ @nix_api_store.h 212:13@

    __exported by:__ @nix_api_store.h@
-}
nix_add_derivation :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_add_derivation =
  RIP.unsafePerformIO hs_bindgen_77eb9e69298beb7c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure@
foreign import ccall unsafe "hs_bindgen_7bef819e4ca74c13" hs_bindgen_7bef819e4ca74c13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_closure@
hs_bindgen_7bef819e4ca74c13 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_7bef819e4ca74c13 =
  RIP.fromFFIType hs_bindgen_7bef819e4ca74c13_base

{-# NOINLINE nix_store_copy_closure #-}
{-| __C declaration:__ @nix_store_copy_closure@

    __defined at:__ @nix_api_store.h 222:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_closure :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (RIP.Ptr Generated.Nix.Store.Path.StorePath) -> IO Generated.Nix.Util.Nix_err)
nix_store_copy_closure =
  RIP.unsafePerformIO hs_bindgen_7bef819e4ca74c13

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure@
foreign import ccall unsafe "hs_bindgen_aefe59c5c33894af" hs_bindgen_aefe59c5c33894af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_get_fs_closure@
hs_bindgen_aefe59c5c33894af :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> RIP.CBool -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_aefe59c5c33894af =
  RIP.fromFFIType hs_bindgen_aefe59c5c33894af_base

{-# NOINLINE nix_store_get_fs_closure #-}
{-| __C declaration:__ @nix_store_get_fs_closure@

    __defined at:__ @nix_api_store.h 243:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_get_fs_closure :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> RIP.CBool -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_store_get_fs_closure =
  RIP.unsafePerformIO hs_bindgen_aefe59c5c33894af

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path@
foreign import ccall unsafe "hs_bindgen_41f5c58b45e314fc" hs_bindgen_41f5c58b45e314fc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_drv_from_store_path@
hs_bindgen_41f5c58b45e314fc :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation)))
hs_bindgen_41f5c58b45e314fc =
  RIP.fromFFIType hs_bindgen_41f5c58b45e314fc_base

{-# NOINLINE nix_store_drv_from_store_path #-}
{-| __C declaration:__ @nix_store_drv_from_store_path@

    __defined at:__ @nix_api_store.h 261:18@

    __exported by:__ @nix_api_store.h@
-}
nix_store_drv_from_store_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr Generated.Nix.Store.Derivation.Nix_derivation))
nix_store_drv_from_store_path =
  RIP.unsafePerformIO hs_bindgen_41f5c58b45e314fc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part@
foreign import ccall unsafe "hs_bindgen_003dc20b64adc4b9" hs_bindgen_003dc20b64adc4b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_query_path_from_hash_part@
hs_bindgen_003dc20b64adc4b9 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_003dc20b64adc4b9 =
  RIP.fromFFIType hs_bindgen_003dc20b64adc4b9_base

{-# NOINLINE nix_store_query_path_from_hash_part #-}
{-| __C declaration:__ @nix_store_query_path_from_hash_part@

    __defined at:__ @nix_api_store.h 272:13@

    __exported by:__ @nix_api_store.h@
-}
nix_store_query_path_from_hash_part :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_store_query_path_from_hash_part =
  RIP.unsafePerformIO hs_bindgen_003dc20b64adc4b9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path@
foreign import ccall unsafe "hs_bindgen_6611da5414883d35" hs_bindgen_6611da5414883d35_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstore_Generated.Nix.Store_get_nix_store_copy_path@
hs_bindgen_6611da5414883d35 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6611da5414883d35 =
  RIP.fromFFIType hs_bindgen_6611da5414883d35_base

{-# NOINLINE nix_store_copy_path #-}
{-| __C declaration:__ @nix_store_copy_path@

    __defined at:__ @nix_api_store.h 284:9@

    __exported by:__ @nix_api_store.h@
-}
nix_store_copy_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> RIP.CBool -> RIP.CBool -> IO Generated.Nix.Util.Nix_err)
nix_store_copy_path =
  RIP.unsafePerformIO hs_bindgen_6611da5414883d35
