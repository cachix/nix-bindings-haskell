{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Util.Safe
    ( Generated.Nix.Util.Safe.nix_c_context_create
    , Generated.Nix.Util.Safe.nix_c_context_free
    , Generated.Nix.Util.Safe.nix_libutil_init
    , Generated.Nix.Util.Safe.nix_setting_get
    , Generated.Nix.Util.Safe.nix_setting_set
    , Generated.Nix.Util.Safe.nix_version_get
    , Generated.Nix.Util.Safe.nix_err_msg
    , Generated.Nix.Util.Safe.nix_err_info_msg
    , Generated.Nix.Util.Safe.nix_err_name
    , Generated.Nix.Util.Safe.nix_err_code
    , Generated.Nix.Util.Safe.nix_set_err_msg
    , Generated.Nix.Util.Safe.nix_clear_err
    , Generated.Nix.Util.Safe.nix_set_verbosity
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_util.h>"
  , "nix_c_context *hs_bindgen_ab14f546a25d1a1b (void)"
  , "{"
  , "  return (nix_c_context_create)();"
  , "}"
  , "void hs_bindgen_d7367a7401988471 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  (nix_c_context_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_2ffc62a1240508fd ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libutil_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_af67d4b689e81b57 ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_setting_get)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_a4b465d62a08f3b0 ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_setting_set)(arg1, arg2, arg3);"
  , "}"
  , "char const *hs_bindgen_7118375ae809efc0 (void)"
  , "{"
  , "  return (nix_version_get)();"
  , "}"
  , "char const *hs_bindgen_cdeb493e43a049ae ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  unsigned int *arg3"
  , ")"
  , "{"
  , "  return (nix_err_msg)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_d9201e79613aae2c ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_err_info_msg)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_55d2b5136724d0c9 ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_err_name)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_959b78f214851e21 ("
  , "  nix_c_context const *arg1"
  , ")"
  , "{"
  , "  return (nix_err_code)(arg1);"
  , "}"
  , "nix_err hs_bindgen_97eb0e83f37fded2 ("
  , "  nix_c_context *arg1,"
  , "  nix_err arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_set_err_msg)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7b587d852e721353 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  (nix_clear_err)(arg1);"
  , "}"
  , "nix_err hs_bindgen_846e518c4655dfa0 ("
  , "  nix_c_context *arg1,"
  , "  nix_verbosity arg2"
  , ")"
  , "{"
  , "  return (nix_set_verbosity)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_c_context_create@
foreign import ccall safe "hs_bindgen_ab14f546a25d1a1b" hs_bindgen_ab14f546a25d1a1b_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_c_context_create@
hs_bindgen_ab14f546a25d1a1b :: IO (RIP.Ptr Nix_c_context)
hs_bindgen_ab14f546a25d1a1b =
  RIP.fromFFIType hs_bindgen_ab14f546a25d1a1b_base

{-| __C declaration:__ @nix_c_context_create@

    __defined at:__ @nix_api_util.h 181:17@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_create :: IO (RIP.Ptr Nix_c_context)
nix_c_context_create = hs_bindgen_ab14f546a25d1a1b

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_c_context_free@
foreign import ccall safe "hs_bindgen_d7367a7401988471" hs_bindgen_d7367a7401988471_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_c_context_free@
hs_bindgen_d7367a7401988471 ::
     RIP.Ptr Nix_c_context
  -> IO ()
hs_bindgen_d7367a7401988471 =
  RIP.fromFFIType hs_bindgen_d7367a7401988471_base

{-| __C declaration:__ @nix_c_context_free@

    __defined at:__ @nix_api_util.h 186:6@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_free ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO ()
nix_c_context_free = hs_bindgen_d7367a7401988471

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_libutil_init@
foreign import ccall safe "hs_bindgen_2ffc62a1240508fd" hs_bindgen_2ffc62a1240508fd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_libutil_init@
hs_bindgen_2ffc62a1240508fd ::
     RIP.Ptr Nix_c_context
  -> IO Nix_err
hs_bindgen_2ffc62a1240508fd =
  RIP.fromFFIType hs_bindgen_2ffc62a1240508fd_base

{-| __C declaration:__ @nix_libutil_init@

    __defined at:__ @nix_api_util.h 201:9@

    __exported by:__ @nix_api_util.h@
-}
nix_libutil_init ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Nix_err
nix_libutil_init = hs_bindgen_2ffc62a1240508fd

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_setting_get@
foreign import ccall safe "hs_bindgen_af67d4b689e81b57" hs_bindgen_af67d4b689e81b57_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_setting_get@
hs_bindgen_af67d4b689e81b57 ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_af67d4b689e81b57 =
  RIP.fromFFIType hs_bindgen_af67d4b689e81b57_base

{-| __C declaration:__ @nix_setting_get@

    __defined at:__ @nix_api_util.h 220:9@

    __exported by:__ @nix_api_util.h@
-}
nix_setting_get ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @key@
  -> Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Nix_err
nix_setting_get = hs_bindgen_af67d4b689e81b57

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_setting_set@
foreign import ccall safe "hs_bindgen_a4b465d62a08f3b0" hs_bindgen_a4b465d62a08f3b0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_setting_set@
hs_bindgen_a4b465d62a08f3b0 ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> IO Nix_err
hs_bindgen_a4b465d62a08f3b0 =
  RIP.fromFFIType hs_bindgen_a4b465d62a08f3b0_base

{-| __C declaration:__ @nix_setting_set@

    __defined at:__ @nix_api_util.h 236:9@

    __exported by:__ @nix_api_util.h@
-}
nix_setting_set ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @key@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @value@
  -> IO Nix_err
nix_setting_set = hs_bindgen_a4b465d62a08f3b0

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_version_get@
foreign import ccall safe "hs_bindgen_7118375ae809efc0" hs_bindgen_7118375ae809efc0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_version_get@
hs_bindgen_7118375ae809efc0 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_7118375ae809efc0 =
  RIP.fromFFIType hs_bindgen_7118375ae809efc0_base

{-| __C declaration:__ @nix_version_get@

    __defined at:__ @nix_api_util.h 249:14@

    __exported by:__ @nix_api_util.h@
-}
nix_version_get :: IO (PtrConst.PtrConst RIP.CChar)
nix_version_get = hs_bindgen_7118375ae809efc0

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_msg@
foreign import ccall safe "hs_bindgen_cdeb493e43a049ae" hs_bindgen_cdeb493e43a049ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_msg@
hs_bindgen_cdeb493e43a049ae ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> RIP.Ptr RIP.CUInt
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_cdeb493e43a049ae =
  RIP.fromFFIType hs_bindgen_cdeb493e43a049ae_base

{-| __C declaration:__ @nix_err_msg@

    __defined at:__ @nix_api_util.h 270:14@

    __exported by:__ @nix_api_util.h@
-}
nix_err_msg ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_c_context
     -- ^ __C declaration:__ @ctx@
  -> RIP.Ptr RIP.CUInt
     -- ^ __C declaration:__ @n@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_err_msg = hs_bindgen_cdeb493e43a049ae

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_info_msg@
foreign import ccall safe "hs_bindgen_d9201e79613aae2c" hs_bindgen_d9201e79613aae2c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_info_msg@
hs_bindgen_d9201e79613aae2c ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_d9201e79613aae2c =
  RIP.fromFFIType hs_bindgen_d9201e79613aae2c_base

{-| __C declaration:__ @nix_err_info_msg@

    __defined at:__ @nix_api_util.h 288:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_info_msg ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_c_context
     -- ^ __C declaration:__ @read_context@
  -> Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Nix_err
nix_err_info_msg = hs_bindgen_d9201e79613aae2c

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_name@
foreign import ccall safe "hs_bindgen_55d2b5136724d0c9" hs_bindgen_55d2b5136724d0c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_name@
hs_bindgen_55d2b5136724d0c9 ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_55d2b5136724d0c9 =
  RIP.fromFFIType hs_bindgen_55d2b5136724d0c9_base

{-| __C declaration:__ @nix_err_name@

    __defined at:__ @nix_api_util.h 307:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_name ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_c_context
     -- ^ __C declaration:__ @read_context@
  -> Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Nix_err
nix_err_name = hs_bindgen_55d2b5136724d0c9

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_code@
foreign import ccall safe "hs_bindgen_959b78f214851e21" hs_bindgen_959b78f214851e21_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_err_code@
hs_bindgen_959b78f214851e21 ::
     PtrConst.PtrConst Nix_c_context
  -> IO Nix_err
hs_bindgen_959b78f214851e21 =
  RIP.fromFFIType hs_bindgen_959b78f214851e21_base

{-| __C declaration:__ @nix_err_code@

    __defined at:__ @nix_api_util.h 320:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_code ::
     PtrConst.PtrConst Nix_c_context
     -- ^ __C declaration:__ @read_context@
  -> IO Nix_err
nix_err_code = hs_bindgen_959b78f214851e21

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_set_err_msg@
foreign import ccall safe "hs_bindgen_97eb0e83f37fded2" hs_bindgen_97eb0e83f37fded2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_set_err_msg@
hs_bindgen_97eb0e83f37fded2 ::
     RIP.Ptr Nix_c_context
  -> Nix_err
  -> PtrConst.PtrConst RIP.CChar
  -> IO Nix_err
hs_bindgen_97eb0e83f37fded2 =
  RIP.fromFFIType hs_bindgen_97eb0e83f37fded2_base

{-| __C declaration:__ @nix_set_err_msg@

    __defined at:__ @nix_api_util.h 334:9@

    __exported by:__ @nix_api_util.h@
-}
nix_set_err_msg ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> Nix_err
     -- ^ __C declaration:__ @err@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @msg@
  -> IO Nix_err
nix_set_err_msg = hs_bindgen_97eb0e83f37fded2

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_clear_err@
foreign import ccall safe "hs_bindgen_7b587d852e721353" hs_bindgen_7b587d852e721353_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_clear_err@
hs_bindgen_7b587d852e721353 ::
     RIP.Ptr Nix_c_context
  -> IO ()
hs_bindgen_7b587d852e721353 =
  RIP.fromFFIType hs_bindgen_7b587d852e721353_base

{-| __C declaration:__ @nix_clear_err@

    __defined at:__ @nix_api_util.h 355:6@

    __exported by:__ @nix_api_util.h@
-}
nix_clear_err ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO ()
nix_clear_err = hs_bindgen_7b587d852e721353

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_set_verbosity@
foreign import ccall safe "hs_bindgen_846e518c4655dfa0" hs_bindgen_846e518c4655dfa0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixutil_Generated.Nix.Util_Safe_nix_set_verbosity@
hs_bindgen_846e518c4655dfa0 ::
     RIP.Ptr Nix_c_context
  -> Nix_verbosity
  -> IO Nix_err
hs_bindgen_846e518c4655dfa0 =
  RIP.fromFFIType hs_bindgen_846e518c4655dfa0_base

{-| __C declaration:__ @nix_set_verbosity@

    __defined at:__ @nix_api_util.h 363:9@

    __exported by:__ @nix_api_util.h@
-}
nix_set_verbosity ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> Nix_verbosity
     -- ^ __C declaration:__ @level@
  -> IO Nix_err
nix_set_verbosity = hs_bindgen_846e518c4655dfa0
