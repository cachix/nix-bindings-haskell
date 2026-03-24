{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.External.FunPtr
    ( Generated.Nix.External.FunPtr.nix_set_string_return
    , Generated.Nix.External.FunPtr.nix_external_print
    , Generated.Nix.External.FunPtr.nix_external_add_string_context
    , Generated.Nix.External.FunPtr.nix_create_external_value
    , Generated.Nix.External.FunPtr.nix_get_external_value_content
    )
  where

import qualified Generated.Nix.Util
import qualified Generated.Nix.Value
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.External

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_external.h>"
  , "/* org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_set_string_return */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2979851fd32ff7df (void)) ("
  , "  nix_string_return *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &nix_set_string_return;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_print */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_7150373b880980d8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_printer *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_external_print;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3224527c86d4c90f (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_string_context *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_external_add_string_context;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_create_external_value */"
  , "__attribute__ ((const))"
  , "ExternalValue *(*hs_bindgen_5982c03c78932db3 (void)) ("
  , "  nix_c_context *arg1,"
  , "  NixCExternalValueDesc *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &nix_create_external_value;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_45ee3594493ce5f2 (void)) ("
  , "  nix_c_context *arg1,"
  , "  ExternalValue *arg2"
  , ")"
  , "{"
  , "  return &nix_get_external_value_content;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_set_string_return@
foreign import ccall unsafe "hs_bindgen_2979851fd32ff7df" hs_bindgen_2979851fd32ff7df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_set_string_return@
hs_bindgen_2979851fd32ff7df :: IO (RIP.FunPtr ((RIP.Ptr Nix_string_return) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_2979851fd32ff7df =
  RIP.fromFFIType hs_bindgen_2979851fd32ff7df_base

{-# NOINLINE nix_set_string_return #-}
{-| __C declaration:__ @nix_set_string_return@

    __defined at:__ @nix_api_external.h 47:6@

    __exported by:__ @nix_api_external.h@
-}
nix_set_string_return :: RIP.FunPtr ((RIP.Ptr Nix_string_return) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
nix_set_string_return =
  RIP.unsafePerformIO hs_bindgen_2979851fd32ff7df

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_print@
foreign import ccall unsafe "hs_bindgen_7150373b880980d8" hs_bindgen_7150373b880980d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_print@
hs_bindgen_7150373b880980d8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_printer) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_7150373b880980d8 =
  RIP.fromFFIType hs_bindgen_7150373b880980d8_base

{-# NOINLINE nix_external_print #-}
{-| __C declaration:__ @nix_external_print@

    __defined at:__ @nix_api_external.h 57:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_print :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_printer) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_external_print =
  RIP.unsafePerformIO hs_bindgen_7150373b880980d8

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context@
foreign import ccall unsafe "hs_bindgen_3224527c86d4c90f" hs_bindgen_3224527c86d4c90f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context@
hs_bindgen_3224527c86d4c90f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_string_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3224527c86d4c90f =
  RIP.fromFFIType hs_bindgen_3224527c86d4c90f_base

{-# NOINLINE nix_external_add_string_context #-}
{-| __C declaration:__ @nix_external_add_string_context@

    __defined at:__ @nix_api_external.h 66:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_add_string_context :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_string_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_external_add_string_context =
  RIP.unsafePerformIO hs_bindgen_3224527c86d4c90f

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_create_external_value@
foreign import ccall unsafe "hs_bindgen_5982c03c78932db3" hs_bindgen_5982c03c78932db3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_create_external_value@
hs_bindgen_5982c03c78932db3 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr NixCExternalValueDesc) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)))
hs_bindgen_5982c03c78932db3 =
  RIP.fromFFIType hs_bindgen_5982c03c78932db3_base

{-# NOINLINE nix_create_external_value #-}
{-| __C declaration:__ @nix_create_external_value@

    __defined at:__ @nix_api_external.h 182:17@

    __exported by:__ @nix_api_external.h@
-}
nix_create_external_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr NixCExternalValueDesc) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue))
nix_create_external_value =
  RIP.unsafePerformIO hs_bindgen_5982c03c78932db3

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content@
foreign import ccall unsafe "hs_bindgen_45ee3594493ce5f2" hs_bindgen_45ee3594493ce5f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content@
hs_bindgen_45ee3594493ce5f2 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Value.ExternalValue) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_45ee3594493ce5f2 =
  RIP.fromFFIType hs_bindgen_45ee3594493ce5f2_base

{-# NOINLINE nix_get_external_value_content #-}
{-| __C declaration:__ @nix_get_external_value_content@

    __defined at:__ @nix_api_external.h 192:8@

    __exported by:__ @nix_api_external.h@
-}
nix_get_external_value_content :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Value.ExternalValue) -> IO (RIP.Ptr RIP.Void))
nix_get_external_value_content =
  RIP.unsafePerformIO hs_bindgen_45ee3594493ce5f2
