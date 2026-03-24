{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.External.Safe
    ( Generated.Nix.External.Safe.nix_set_string_return
    , Generated.Nix.External.Safe.nix_external_print
    , Generated.Nix.External.Safe.nix_external_add_string_context
    , Generated.Nix.External.Safe.nix_create_external_value
    , Generated.Nix.External.Safe.nix_get_external_value_content
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
  , "void hs_bindgen_4c4952d1306de472 ("
  , "  nix_string_return *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (nix_set_string_return)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_56274847b216c5f3 ("
  , "  nix_c_context *arg1,"
  , "  nix_printer *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_print)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_9cb8faba34de4bc8 ("
  , "  nix_c_context *arg1,"
  , "  nix_string_context *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_add_string_context)(arg1, arg2, arg3);"
  , "}"
  , "ExternalValue *hs_bindgen_d8a23b0de7d1c458 ("
  , "  nix_c_context *arg1,"
  , "  NixCExternalValueDesc *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (nix_create_external_value)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_862821cbc68a6e6d ("
  , "  nix_c_context *arg1,"
  , "  ExternalValue *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external_value_content)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_set_string_return@
foreign import ccall safe "hs_bindgen_4c4952d1306de472" hs_bindgen_4c4952d1306de472_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_set_string_return@
hs_bindgen_4c4952d1306de472 ::
     RIP.Ptr Nix_string_return
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_4c4952d1306de472 =
  RIP.fromFFIType hs_bindgen_4c4952d1306de472_base

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
nix_set_string_return = hs_bindgen_4c4952d1306de472

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_external_print@
foreign import ccall safe "hs_bindgen_56274847b216c5f3" hs_bindgen_56274847b216c5f3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_external_print@
hs_bindgen_56274847b216c5f3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_printer
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_56274847b216c5f3 =
  RIP.fromFFIType hs_bindgen_56274847b216c5f3_base

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
nix_external_print = hs_bindgen_56274847b216c5f3

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_external_add_string_context@
foreign import ccall safe "hs_bindgen_9cb8faba34de4bc8" hs_bindgen_9cb8faba34de4bc8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_external_add_string_context@
hs_bindgen_9cb8faba34de4bc8 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_string_context
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9cb8faba34de4bc8 =
  RIP.fromFFIType hs_bindgen_9cb8faba34de4bc8_base

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
  hs_bindgen_9cb8faba34de4bc8

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_create_external_value@
foreign import ccall safe "hs_bindgen_d8a23b0de7d1c458" hs_bindgen_d8a23b0de7d1c458_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_create_external_value@
hs_bindgen_d8a23b0de7d1c458 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr NixCExternalValueDesc
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)
hs_bindgen_d8a23b0de7d1c458 =
  RIP.fromFFIType hs_bindgen_d8a23b0de7d1c458_base

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
  hs_bindgen_d8a23b0de7d1c458

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_get_external_value_content@
foreign import ccall safe "hs_bindgen_862821cbc68a6e6d" hs_bindgen_862821cbc68a6e6d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexternal_Generated.Nix.External_Safe_nix_get_external_value_content@
hs_bindgen_862821cbc68a6e6d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Value.ExternalValue
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_862821cbc68a6e6d =
  RIP.fromFFIType hs_bindgen_862821cbc68a6e6d_base

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
  hs_bindgen_862821cbc68a6e6d
