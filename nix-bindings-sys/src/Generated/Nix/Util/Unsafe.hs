{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Util.Unsafe
    ( Generated.Nix.Util.Unsafe.nix_c_context_create
    , Generated.Nix.Util.Unsafe.nix_c_context_free
    , Generated.Nix.Util.Unsafe.nix_libutil_init
    , Generated.Nix.Util.Unsafe.nix_setting_get
    , Generated.Nix.Util.Unsafe.nix_setting_set
    , Generated.Nix.Util.Unsafe.nix_version_get
    , Generated.Nix.Util.Unsafe.nix_err_msg
    , Generated.Nix.Util.Unsafe.nix_err_info_msg
    , Generated.Nix.Util.Unsafe.nix_err_name
    , Generated.Nix.Util.Unsafe.nix_err_code
    , Generated.Nix.Util.Unsafe.nix_set_err_msg
    , Generated.Nix.Util.Unsafe.nix_clear_err
    , Generated.Nix.Util.Unsafe.nix_set_verbosity
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_util.h>"
  , "nix_c_context *hs_bindgen_22a1603026732941 (void)"
  , "{"
  , "  return (nix_c_context_create)();"
  , "}"
  , "void hs_bindgen_bc5dd4b52be5f3e5 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  (nix_c_context_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_7dad515e0711a4bb ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libutil_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_6659bf3e6fdb1c37 ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_setting_get)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_62cfd057acf4758d ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_setting_set)(arg1, arg2, arg3);"
  , "}"
  , "char const *hs_bindgen_31ee2f6e21842dc2 (void)"
  , "{"
  , "  return (nix_version_get)();"
  , "}"
  , "char const *hs_bindgen_00acf997158defc2 ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  unsigned int *arg3"
  , ")"
  , "{"
  , "  return (nix_err_msg)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_62e31af21bbce4bb ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_err_info_msg)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_011631a4bb545e2f ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_err_name)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_49de419f0f34cf86 ("
  , "  nix_c_context const *arg1"
  , ")"
  , "{"
  , "  return (nix_err_code)(arg1);"
  , "}"
  , "nix_err hs_bindgen_d2d7386810cff5fc ("
  , "  nix_c_context *arg1,"
  , "  nix_err arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_set_err_msg)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f23785d95f6658d0 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  (nix_clear_err)(arg1);"
  , "}"
  , "nix_err hs_bindgen_a7f80b0753022705 ("
  , "  nix_c_context *arg1,"
  , "  nix_verbosity arg2"
  , ")"
  , "{"
  , "  return (nix_set_verbosity)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_c_context_create@
foreign import ccall unsafe "hs_bindgen_22a1603026732941" hs_bindgen_22a1603026732941_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_c_context_create@
hs_bindgen_22a1603026732941 :: IO (RIP.Ptr Nix_c_context)
hs_bindgen_22a1603026732941 =
  RIP.fromFFIType hs_bindgen_22a1603026732941_base

{-| __C declaration:__ @nix_c_context_create@

    __defined at:__ @nix_api_util.h 181:17@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_create :: IO (RIP.Ptr Nix_c_context)
nix_c_context_create = hs_bindgen_22a1603026732941

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_c_context_free@
foreign import ccall unsafe "hs_bindgen_bc5dd4b52be5f3e5" hs_bindgen_bc5dd4b52be5f3e5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_c_context_free@
hs_bindgen_bc5dd4b52be5f3e5 ::
     RIP.Ptr Nix_c_context
  -> IO ()
hs_bindgen_bc5dd4b52be5f3e5 =
  RIP.fromFFIType hs_bindgen_bc5dd4b52be5f3e5_base

{-| __C declaration:__ @nix_c_context_free@

    __defined at:__ @nix_api_util.h 186:6@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_free ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO ()
nix_c_context_free = hs_bindgen_bc5dd4b52be5f3e5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_libutil_init@
foreign import ccall unsafe "hs_bindgen_7dad515e0711a4bb" hs_bindgen_7dad515e0711a4bb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_libutil_init@
hs_bindgen_7dad515e0711a4bb ::
     RIP.Ptr Nix_c_context
  -> IO Nix_err
hs_bindgen_7dad515e0711a4bb =
  RIP.fromFFIType hs_bindgen_7dad515e0711a4bb_base

{-| __C declaration:__ @nix_libutil_init@

    __defined at:__ @nix_api_util.h 201:9@

    __exported by:__ @nix_api_util.h@
-}
nix_libutil_init ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Nix_err
nix_libutil_init = hs_bindgen_7dad515e0711a4bb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_setting_get@
foreign import ccall unsafe "hs_bindgen_6659bf3e6fdb1c37" hs_bindgen_6659bf3e6fdb1c37_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_setting_get@
hs_bindgen_6659bf3e6fdb1c37 ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_6659bf3e6fdb1c37 =
  RIP.fromFFIType hs_bindgen_6659bf3e6fdb1c37_base

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
nix_setting_get = hs_bindgen_6659bf3e6fdb1c37

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_setting_set@
foreign import ccall unsafe "hs_bindgen_62cfd057acf4758d" hs_bindgen_62cfd057acf4758d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_setting_set@
hs_bindgen_62cfd057acf4758d ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> IO Nix_err
hs_bindgen_62cfd057acf4758d =
  RIP.fromFFIType hs_bindgen_62cfd057acf4758d_base

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
nix_setting_set = hs_bindgen_62cfd057acf4758d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_version_get@
foreign import ccall unsafe "hs_bindgen_31ee2f6e21842dc2" hs_bindgen_31ee2f6e21842dc2_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_version_get@
hs_bindgen_31ee2f6e21842dc2 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_31ee2f6e21842dc2 =
  RIP.fromFFIType hs_bindgen_31ee2f6e21842dc2_base

{-| __C declaration:__ @nix_version_get@

    __defined at:__ @nix_api_util.h 249:14@

    __exported by:__ @nix_api_util.h@
-}
nix_version_get :: IO (PtrConst.PtrConst RIP.CChar)
nix_version_get = hs_bindgen_31ee2f6e21842dc2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_msg@
foreign import ccall unsafe "hs_bindgen_00acf997158defc2" hs_bindgen_00acf997158defc2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_msg@
hs_bindgen_00acf997158defc2 ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> RIP.Ptr RIP.CUInt
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_00acf997158defc2 =
  RIP.fromFFIType hs_bindgen_00acf997158defc2_base

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
nix_err_msg = hs_bindgen_00acf997158defc2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_info_msg@
foreign import ccall unsafe "hs_bindgen_62e31af21bbce4bb" hs_bindgen_62e31af21bbce4bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_info_msg@
hs_bindgen_62e31af21bbce4bb ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_62e31af21bbce4bb =
  RIP.fromFFIType hs_bindgen_62e31af21bbce4bb_base

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
nix_err_info_msg = hs_bindgen_62e31af21bbce4bb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_name@
foreign import ccall unsafe "hs_bindgen_011631a4bb545e2f" hs_bindgen_011631a4bb545e2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_name@
hs_bindgen_011631a4bb545e2f ::
     RIP.Ptr Nix_c_context
  -> PtrConst.PtrConst Nix_c_context
  -> Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Nix_err
hs_bindgen_011631a4bb545e2f =
  RIP.fromFFIType hs_bindgen_011631a4bb545e2f_base

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
nix_err_name = hs_bindgen_011631a4bb545e2f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_code@
foreign import ccall unsafe "hs_bindgen_49de419f0f34cf86" hs_bindgen_49de419f0f34cf86_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_err_code@
hs_bindgen_49de419f0f34cf86 ::
     PtrConst.PtrConst Nix_c_context
  -> IO Nix_err
hs_bindgen_49de419f0f34cf86 =
  RIP.fromFFIType hs_bindgen_49de419f0f34cf86_base

{-| __C declaration:__ @nix_err_code@

    __defined at:__ @nix_api_util.h 320:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_code ::
     PtrConst.PtrConst Nix_c_context
     -- ^ __C declaration:__ @read_context@
  -> IO Nix_err
nix_err_code = hs_bindgen_49de419f0f34cf86

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_set_err_msg@
foreign import ccall unsafe "hs_bindgen_d2d7386810cff5fc" hs_bindgen_d2d7386810cff5fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_set_err_msg@
hs_bindgen_d2d7386810cff5fc ::
     RIP.Ptr Nix_c_context
  -> Nix_err
  -> PtrConst.PtrConst RIP.CChar
  -> IO Nix_err
hs_bindgen_d2d7386810cff5fc =
  RIP.fromFFIType hs_bindgen_d2d7386810cff5fc_base

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
nix_set_err_msg = hs_bindgen_d2d7386810cff5fc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_clear_err@
foreign import ccall unsafe "hs_bindgen_f23785d95f6658d0" hs_bindgen_f23785d95f6658d0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_clear_err@
hs_bindgen_f23785d95f6658d0 ::
     RIP.Ptr Nix_c_context
  -> IO ()
hs_bindgen_f23785d95f6658d0 =
  RIP.fromFFIType hs_bindgen_f23785d95f6658d0_base

{-| __C declaration:__ @nix_clear_err@

    __defined at:__ @nix_api_util.h 355:6@

    __exported by:__ @nix_api_util.h@
-}
nix_clear_err ::
     RIP.Ptr Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO ()
nix_clear_err = hs_bindgen_f23785d95f6658d0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_set_verbosity@
foreign import ccall unsafe "hs_bindgen_a7f80b0753022705" hs_bindgen_a7f80b0753022705_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_Unsafe_nix_set_verbosity@
hs_bindgen_a7f80b0753022705 ::
     RIP.Ptr Nix_c_context
  -> Nix_verbosity
  -> IO Nix_err
hs_bindgen_a7f80b0753022705 =
  RIP.fromFFIType hs_bindgen_a7f80b0753022705_base

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
nix_set_verbosity = hs_bindgen_a7f80b0753022705
