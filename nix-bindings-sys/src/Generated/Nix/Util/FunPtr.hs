{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Util.FunPtr
    ( Generated.Nix.Util.FunPtr.nix_c_context_create
    , Generated.Nix.Util.FunPtr.nix_c_context_free
    , Generated.Nix.Util.FunPtr.nix_libutil_init
    , Generated.Nix.Util.FunPtr.nix_setting_get
    , Generated.Nix.Util.FunPtr.nix_setting_set
    , Generated.Nix.Util.FunPtr.nix_version_get
    , Generated.Nix.Util.FunPtr.nix_err_msg
    , Generated.Nix.Util.FunPtr.nix_err_info_msg
    , Generated.Nix.Util.FunPtr.nix_err_name
    , Generated.Nix.Util.FunPtr.nix_err_code
    , Generated.Nix.Util.FunPtr.nix_set_err_msg
    , Generated.Nix.Util.FunPtr.nix_clear_err
    , Generated.Nix.Util.FunPtr.nix_set_verbosity
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Util

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_util.h>"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_create */"
  , "__attribute__ ((const))"
  , "nix_c_context *(*hs_bindgen_6d39665bfb559506 (void)) (void)"
  , "{"
  , "  return &nix_c_context_create;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3fdadde19061665c (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_c_context_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_libutil_init */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_5954445cd82c798e (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libutil_init;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_get */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_39dc1cbcad1561c9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_setting_get;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_set */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_acdb28ab8ac4802b (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_setting_set;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_version_get */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_88bd124658a96c40 (void)) (void)"
  , "{"
  , "  return &nix_version_get;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_msg */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_172398a8f29a547f (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  unsigned int *arg3"
  , ")"
  , "{"
  , "  return &nix_err_msg;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_info_msg */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_ceedd60f44e3718c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_err_info_msg;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_name */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_faaa5139b6220abd (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_c_context const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_err_name;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_code */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_1cb0eb3f8b57169c (void)) ("
  , "  nix_c_context const *arg1"
  , ")"
  , "{"
  , "  return &nix_err_code;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_err_msg */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8c26001ce4a4828c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_err arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_set_err_msg;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_clear_err */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_487ebd7b2808658a (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_clear_err;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_verbosity */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_552a2bf8b7d80247 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_verbosity arg2"
  , ")"
  , "{"
  , "  return &nix_set_verbosity;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_create@
foreign import ccall unsafe "hs_bindgen_6d39665bfb559506" hs_bindgen_6d39665bfb559506_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_create@
hs_bindgen_6d39665bfb559506 :: IO (RIP.FunPtr (IO (RIP.Ptr Nix_c_context)))
hs_bindgen_6d39665bfb559506 =
  RIP.fromFFIType hs_bindgen_6d39665bfb559506_base

{-# NOINLINE nix_c_context_create #-}
{-| __C declaration:__ @nix_c_context_create@

    __defined at:__ @nix_api_util.h 181:17@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_create :: RIP.FunPtr (IO (RIP.Ptr Nix_c_context))
nix_c_context_create =
  RIP.unsafePerformIO hs_bindgen_6d39665bfb559506

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_free@
foreign import ccall unsafe "hs_bindgen_3fdadde19061665c" hs_bindgen_3fdadde19061665c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_c_context_free@
hs_bindgen_3fdadde19061665c :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO ()))
hs_bindgen_3fdadde19061665c =
  RIP.fromFFIType hs_bindgen_3fdadde19061665c_base

{-# NOINLINE nix_c_context_free #-}
{-| __C declaration:__ @nix_c_context_free@

    __defined at:__ @nix_api_util.h 186:6@

    __exported by:__ @nix_api_util.h@
-}
nix_c_context_free :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO ())
nix_c_context_free =
  RIP.unsafePerformIO hs_bindgen_3fdadde19061665c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_libutil_init@
foreign import ccall unsafe "hs_bindgen_5954445cd82c798e" hs_bindgen_5954445cd82c798e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_libutil_init@
hs_bindgen_5954445cd82c798e :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO Nix_err))
hs_bindgen_5954445cd82c798e =
  RIP.fromFFIType hs_bindgen_5954445cd82c798e_base

{-# NOINLINE nix_libutil_init #-}
{-| __C declaration:__ @nix_libutil_init@

    __defined at:__ @nix_api_util.h 201:9@

    __exported by:__ @nix_api_util.h@
-}
nix_libutil_init :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO Nix_err)
nix_libutil_init =
  RIP.unsafePerformIO hs_bindgen_5954445cd82c798e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_get@
foreign import ccall unsafe "hs_bindgen_39dc1cbcad1561c9" hs_bindgen_39dc1cbcad1561c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_get@
hs_bindgen_39dc1cbcad1561c9 :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err))
hs_bindgen_39dc1cbcad1561c9 =
  RIP.fromFFIType hs_bindgen_39dc1cbcad1561c9_base

{-# NOINLINE nix_setting_get #-}
{-| __C declaration:__ @nix_setting_get@

    __defined at:__ @nix_api_util.h 220:9@

    __exported by:__ @nix_api_util.h@
-}
nix_setting_get :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err)
nix_setting_get =
  RIP.unsafePerformIO hs_bindgen_39dc1cbcad1561c9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_set@
foreign import ccall unsafe "hs_bindgen_acdb28ab8ac4802b" hs_bindgen_acdb28ab8ac4802b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_setting_set@
hs_bindgen_acdb28ab8ac4802b :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO Nix_err))
hs_bindgen_acdb28ab8ac4802b =
  RIP.fromFFIType hs_bindgen_acdb28ab8ac4802b_base

{-# NOINLINE nix_setting_set #-}
{-| __C declaration:__ @nix_setting_set@

    __defined at:__ @nix_api_util.h 236:9@

    __exported by:__ @nix_api_util.h@
-}
nix_setting_set :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO Nix_err)
nix_setting_set =
  RIP.unsafePerformIO hs_bindgen_acdb28ab8ac4802b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_version_get@
foreign import ccall unsafe "hs_bindgen_88bd124658a96c40" hs_bindgen_88bd124658a96c40_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_version_get@
hs_bindgen_88bd124658a96c40 :: IO (RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_88bd124658a96c40 =
  RIP.fromFFIType hs_bindgen_88bd124658a96c40_base

{-# NOINLINE nix_version_get #-}
{-| __C declaration:__ @nix_version_get@

    __defined at:__ @nix_api_util.h 249:14@

    __exported by:__ @nix_api_util.h@
-}
nix_version_get :: RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar))
nix_version_get =
  RIP.unsafePerformIO hs_bindgen_88bd124658a96c40

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_msg@
foreign import ccall unsafe "hs_bindgen_172398a8f29a547f" hs_bindgen_172398a8f29a547f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_msg@
hs_bindgen_172398a8f29a547f :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> (RIP.Ptr RIP.CUInt) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_172398a8f29a547f =
  RIP.fromFFIType hs_bindgen_172398a8f29a547f_base

{-# NOINLINE nix_err_msg #-}
{-| __C declaration:__ @nix_err_msg@

    __defined at:__ @nix_api_util.h 270:14@

    __exported by:__ @nix_api_util.h@
-}
nix_err_msg :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> (RIP.Ptr RIP.CUInt) -> IO (PtrConst.PtrConst RIP.CChar))
nix_err_msg =
  RIP.unsafePerformIO hs_bindgen_172398a8f29a547f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_info_msg@
foreign import ccall unsafe "hs_bindgen_ceedd60f44e3718c" hs_bindgen_ceedd60f44e3718c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_info_msg@
hs_bindgen_ceedd60f44e3718c :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err))
hs_bindgen_ceedd60f44e3718c =
  RIP.fromFFIType hs_bindgen_ceedd60f44e3718c_base

{-# NOINLINE nix_err_info_msg #-}
{-| __C declaration:__ @nix_err_info_msg@

    __defined at:__ @nix_api_util.h 288:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_info_msg :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err)
nix_err_info_msg =
  RIP.unsafePerformIO hs_bindgen_ceedd60f44e3718c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_name@
foreign import ccall unsafe "hs_bindgen_faaa5139b6220abd" hs_bindgen_faaa5139b6220abd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_name@
hs_bindgen_faaa5139b6220abd :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err))
hs_bindgen_faaa5139b6220abd =
  RIP.fromFFIType hs_bindgen_faaa5139b6220abd_base

{-# NOINLINE nix_err_name #-}
{-| __C declaration:__ @nix_err_name@

    __defined at:__ @nix_api_util.h 307:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_name :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> (PtrConst.PtrConst Nix_c_context) -> Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Nix_err)
nix_err_name =
  RIP.unsafePerformIO hs_bindgen_faaa5139b6220abd

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_code@
foreign import ccall unsafe "hs_bindgen_1cb0eb3f8b57169c" hs_bindgen_1cb0eb3f8b57169c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_err_code@
hs_bindgen_1cb0eb3f8b57169c :: IO (RIP.FunPtr ((PtrConst.PtrConst Nix_c_context) -> IO Nix_err))
hs_bindgen_1cb0eb3f8b57169c =
  RIP.fromFFIType hs_bindgen_1cb0eb3f8b57169c_base

{-# NOINLINE nix_err_code #-}
{-| __C declaration:__ @nix_err_code@

    __defined at:__ @nix_api_util.h 320:9@

    __exported by:__ @nix_api_util.h@
-}
nix_err_code :: RIP.FunPtr ((PtrConst.PtrConst Nix_c_context) -> IO Nix_err)
nix_err_code =
  RIP.unsafePerformIO hs_bindgen_1cb0eb3f8b57169c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_err_msg@
foreign import ccall unsafe "hs_bindgen_8c26001ce4a4828c" hs_bindgen_8c26001ce4a4828c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_err_msg@
hs_bindgen_8c26001ce4a4828c :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> Nix_err -> (PtrConst.PtrConst RIP.CChar) -> IO Nix_err))
hs_bindgen_8c26001ce4a4828c =
  RIP.fromFFIType hs_bindgen_8c26001ce4a4828c_base

{-# NOINLINE nix_set_err_msg #-}
{-| __C declaration:__ @nix_set_err_msg@

    __defined at:__ @nix_api_util.h 334:9@

    __exported by:__ @nix_api_util.h@
-}
nix_set_err_msg :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> Nix_err -> (PtrConst.PtrConst RIP.CChar) -> IO Nix_err)
nix_set_err_msg =
  RIP.unsafePerformIO hs_bindgen_8c26001ce4a4828c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_clear_err@
foreign import ccall unsafe "hs_bindgen_487ebd7b2808658a" hs_bindgen_487ebd7b2808658a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_clear_err@
hs_bindgen_487ebd7b2808658a :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO ()))
hs_bindgen_487ebd7b2808658a =
  RIP.fromFFIType hs_bindgen_487ebd7b2808658a_base

{-# NOINLINE nix_clear_err #-}
{-| __C declaration:__ @nix_clear_err@

    __defined at:__ @nix_api_util.h 355:6@

    __exported by:__ @nix_api_util.h@
-}
nix_clear_err :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> IO ())
nix_clear_err =
  RIP.unsafePerformIO hs_bindgen_487ebd7b2808658a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_verbosity@
foreign import ccall unsafe "hs_bindgen_552a2bf8b7d80247" hs_bindgen_552a2bf8b7d80247_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixutil_Generated.Nix.Util_get_nix_set_verbosity@
hs_bindgen_552a2bf8b7d80247 :: IO (RIP.FunPtr ((RIP.Ptr Nix_c_context) -> Nix_verbosity -> IO Nix_err))
hs_bindgen_552a2bf8b7d80247 =
  RIP.fromFFIType hs_bindgen_552a2bf8b7d80247_base

{-# NOINLINE nix_set_verbosity #-}
{-| __C declaration:__ @nix_set_verbosity@

    __defined at:__ @nix_api_util.h 363:9@

    __exported by:__ @nix_api_util.h@
-}
nix_set_verbosity :: RIP.FunPtr ((RIP.Ptr Nix_c_context) -> Nix_verbosity -> IO Nix_err)
nix_set_verbosity =
  RIP.unsafePerformIO hs_bindgen_552a2bf8b7d80247
