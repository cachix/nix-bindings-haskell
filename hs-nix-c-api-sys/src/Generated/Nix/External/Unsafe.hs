{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.External.Unsafe
    ( Generated.Nix.External.Unsafe.nix_set_string_return
    , Generated.Nix.External.Unsafe.nix_external_print
    , Generated.Nix.External.Unsafe.nix_external_add_string_context
    , Generated.Nix.External.Unsafe.nix_create_external_value
    , Generated.Nix.External.Unsafe.nix_get_external_value_content
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
  , "void hs_bindgen_c11002d63c6147a6 ("
  , "  nix_string_return *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (nix_set_string_return)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_921b956cfb16fe03 ("
  , "  nix_c_context *arg1,"
  , "  nix_printer *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_print)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_5d1fe8c3188fb00f ("
  , "  nix_c_context *arg1,"
  , "  nix_string_context *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_add_string_context)(arg1, arg2, arg3);"
  , "}"
  , "ExternalValue *hs_bindgen_7a22cec1701a6379 ("
  , "  nix_c_context *arg1,"
  , "  NixCExternalValueDesc *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (nix_create_external_value)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_f081f0a80aaea610 ("
  , "  nix_c_context *arg1,"
  , "  ExternalValue *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external_value_content)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_set_string_return@
foreign import ccall unsafe "hs_bindgen_c11002d63c6147a6" hs_bindgen_c11002d63c6147a6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_set_string_return@
hs_bindgen_c11002d63c6147a6 ::
     RIP.Ptr Nix_string_return
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_c11002d63c6147a6 =
  RIP.fromFFIType hs_bindgen_c11002d63c6147a6_base

{-| __C declaration:__ @nix_set_string_return@

    __defined at:__ @nix_api_external.h 47:6@

    __exported by:__ @nix_api_external.h@
-}
nix_set_string_return ::
     RIP.Ptr Nix_string_return
     -- ^ __C declaration:__ @str@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @c@
  -> IO ()
nix_set_string_return = hs_bindgen_c11002d63c6147a6

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_print@
foreign import ccall unsafe "hs_bindgen_921b956cfb16fe03" hs_bindgen_921b956cfb16fe03_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_print@
hs_bindgen_921b956cfb16fe03 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_printer
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_921b956cfb16fe03 =
  RIP.fromFFIType hs_bindgen_921b956cfb16fe03_base

{-| __C declaration:__ @nix_external_print@

    __defined at:__ @nix_api_external.h 57:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_print ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_printer
     -- ^ __C declaration:__ @printer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @str@
  -> IO Generated.Nix.Util.Nix_err
nix_external_print = hs_bindgen_921b956cfb16fe03

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_add_string_context@
foreign import ccall unsafe "hs_bindgen_5d1fe8c3188fb00f" hs_bindgen_5d1fe8c3188fb00f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_add_string_context@
hs_bindgen_5d1fe8c3188fb00f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_string_context
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_5d1fe8c3188fb00f =
  RIP.fromFFIType hs_bindgen_5d1fe8c3188fb00f_base

{-| __C declaration:__ @nix_external_add_string_context@

    __defined at:__ @nix_api_external.h 66:9@

    __exported by:__ @nix_api_external.h@
-}
nix_external_add_string_context ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_string_context
     -- ^ __C declaration:__ @string_context@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @c@
  -> IO Generated.Nix.Util.Nix_err
nix_external_add_string_context =
  hs_bindgen_5d1fe8c3188fb00f

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_create_external_value@
foreign import ccall unsafe "hs_bindgen_7a22cec1701a6379" hs_bindgen_7a22cec1701a6379_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_create_external_value@
hs_bindgen_7a22cec1701a6379 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr NixCExternalValueDesc
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)
hs_bindgen_7a22cec1701a6379 =
  RIP.fromFFIType hs_bindgen_7a22cec1701a6379_base

{-| __C declaration:__ @nix_create_external_value@

    __defined at:__ @nix_api_external.h 182:17@

    __exported by:__ @nix_api_external.h@
-}
nix_create_external_value ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr NixCExternalValueDesc
     -- ^ __C declaration:__ @desc@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @v@
  -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)
nix_create_external_value =
  hs_bindgen_7a22cec1701a6379

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_get_external_value_content@
foreign import ccall unsafe "hs_bindgen_f081f0a80aaea610" hs_bindgen_f081f0a80aaea610_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Unsafe_nix_get_external_value_content@
hs_bindgen_f081f0a80aaea610 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Value.ExternalValue
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f081f0a80aaea610 =
  RIP.fromFFIType hs_bindgen_f081f0a80aaea610_base

{-| __C declaration:__ @nix_get_external_value_content@

    __defined at:__ @nix_api_external.h 192:8@

    __exported by:__ @nix_api_external.h@
-}
nix_get_external_value_content ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Value.ExternalValue
     -- ^ __C declaration:__ @b@
  -> IO (RIP.Ptr RIP.Void)
nix_get_external_value_content =
  hs_bindgen_f081f0a80aaea610
