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
  , "/* org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_set_string_return */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6952c30967b26297 (void)) ("
  , "  nix_string_return *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &nix_set_string_return;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_print */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_a9d462c8e6928208 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_printer *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_external_print;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_f666286ac750b00c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_string_context *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_external_add_string_context;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_create_external_value */"
  , "__attribute__ ((const))"
  , "ExternalValue *(*hs_bindgen_89fd88ee2e048c61 (void)) ("
  , "  nix_c_context *arg1,"
  , "  NixCExternalValueDesc *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &nix_create_external_value;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_65bb21d55826a086 (void)) ("
  , "  nix_c_context *arg1,"
  , "  ExternalValue *arg2"
  , ")"
  , "{"
  , "  return &nix_get_external_value_content;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_set_string_return@
foreign import ccall unsafe "hs_bindgen_6952c30967b26297" hs_bindgen_6952c30967b26297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_set_string_return@
hs_bindgen_6952c30967b26297 :: IO (RIP.FunPtr ((RIP.Ptr Nix_string_return) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_6952c30967b26297 =
  RIP.fromFFIType hs_bindgen_6952c30967b26297_base

{-# NOINLINE nix_set_string_return #-}
{-| __C declaration:__ @nix_set_string_return@

    __defined at:__ @nix_api_external.h 47:6@

    __exported by:__ @nix_api_external.h@
-}
nix_set_string_return :: RIP.FunPtr ((RIP.Ptr Nix_string_return) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
nix_set_string_return =
  RIP.unsafePerformIO hs_bindgen_6952c30967b26297

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_print@
foreign import ccall unsafe "hs_bindgen_a9d462c8e6928208" hs_bindgen_a9d462c8e6928208_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_print@
hs_bindgen_a9d462c8e6928208 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_printer) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_a9d462c8e6928208 =
  RIP.fromFFIType hs_bindgen_a9d462c8e6928208_base

{-# NOINLINE nix_external_print #-}
{-| __C declaration:__ @nix_external_print@

    __defined at:__ @nix_api_external.h 57:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_print :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_printer) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_external_print =
  RIP.unsafePerformIO hs_bindgen_a9d462c8e6928208

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context@
foreign import ccall unsafe "hs_bindgen_f666286ac750b00c" hs_bindgen_f666286ac750b00c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_external_add_string_context@
hs_bindgen_f666286ac750b00c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_string_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_f666286ac750b00c =
  RIP.fromFFIType hs_bindgen_f666286ac750b00c_base

{-# NOINLINE nix_external_add_string_context #-}
{-| __C declaration:__ @nix_external_add_string_context@

    __defined at:__ @nix_api_external.h 66:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_add_string_context :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_string_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_external_add_string_context =
  RIP.unsafePerformIO hs_bindgen_f666286ac750b00c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_create_external_value@
foreign import ccall unsafe "hs_bindgen_89fd88ee2e048c61" hs_bindgen_89fd88ee2e048c61_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_create_external_value@
hs_bindgen_89fd88ee2e048c61 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr NixCExternalValueDesc) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)))
hs_bindgen_89fd88ee2e048c61 =
  RIP.fromFFIType hs_bindgen_89fd88ee2e048c61_base

{-# NOINLINE nix_create_external_value #-}
{-| __C declaration:__ @nix_create_external_value@

    __defined at:__ @nix_api_external.h 182:17@

    __exported by:__ @nix_api_external.h@
-}
nix_create_external_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr NixCExternalValueDesc) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue))
nix_create_external_value =
  RIP.unsafePerformIO hs_bindgen_89fd88ee2e048c61

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content@
foreign import ccall unsafe "hs_bindgen_65bb21d55826a086" hs_bindgen_65bb21d55826a086_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_get_nix_get_external_value_content@
hs_bindgen_65bb21d55826a086 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Value.ExternalValue) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_65bb21d55826a086 =
  RIP.fromFFIType hs_bindgen_65bb21d55826a086_base

{-# NOINLINE nix_get_external_value_content #-}
{-| __C declaration:__ @nix_get_external_value_content@

    __defined at:__ @nix_api_external.h 192:8@

    __exported by:__ @nix_api_external.h@
-}
nix_get_external_value_content :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Value.ExternalValue) -> IO (RIP.Ptr RIP.Void))
nix_get_external_value_content =
  RIP.unsafePerformIO hs_bindgen_65bb21d55826a086
