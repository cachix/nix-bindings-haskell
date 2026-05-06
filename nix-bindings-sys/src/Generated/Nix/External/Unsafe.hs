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
  , "void hs_bindgen_608a4db350a80268 ("
  , "  nix_string_return *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (nix_set_string_return)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_2a2a85b127870780 ("
  , "  nix_c_context *arg1,"
  , "  nix_printer *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_print)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_b0dcbfd3d2c845cd ("
  , "  nix_c_context *arg1,"
  , "  nix_string_context *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_external_add_string_context)(arg1, arg2, arg3);"
  , "}"
  , "ExternalValue *hs_bindgen_b3d447abc3ec553f ("
  , "  nix_c_context *arg1,"
  , "  NixCExternalValueDesc *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (nix_create_external_value)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_425774f5ed8d355b ("
  , "  nix_c_context *arg1,"
  , "  ExternalValue *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external_value_content)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_set_string_return@
foreign import ccall unsafe "hs_bindgen_608a4db350a80268" hs_bindgen_608a4db350a80268_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_set_string_return@
hs_bindgen_608a4db350a80268 ::
     RIP.Ptr Nix_string_return
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_608a4db350a80268 =
  RIP.fromFFIType hs_bindgen_608a4db350a80268_base

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
nix_set_string_return = hs_bindgen_608a4db350a80268

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_print@
foreign import ccall unsafe "hs_bindgen_2a2a85b127870780" hs_bindgen_2a2a85b127870780_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_print@
hs_bindgen_2a2a85b127870780 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_printer
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_2a2a85b127870780 =
  RIP.fromFFIType hs_bindgen_2a2a85b127870780_base

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
nix_external_print = hs_bindgen_2a2a85b127870780

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_add_string_context@
foreign import ccall unsafe "hs_bindgen_b0dcbfd3d2c845cd" hs_bindgen_b0dcbfd3d2c845cd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_external_add_string_context@
hs_bindgen_b0dcbfd3d2c845cd ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_string_context
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b0dcbfd3d2c845cd =
  RIP.fromFFIType hs_bindgen_b0dcbfd3d2c845cd_base

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
  hs_bindgen_b0dcbfd3d2c845cd

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_create_external_value@
foreign import ccall unsafe "hs_bindgen_b3d447abc3ec553f" hs_bindgen_b3d447abc3ec553f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_create_external_value@
hs_bindgen_b3d447abc3ec553f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr NixCExternalValueDesc
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr Generated.Nix.Value.ExternalValue)
hs_bindgen_b3d447abc3ec553f =
  RIP.fromFFIType hs_bindgen_b3d447abc3ec553f_base

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
  hs_bindgen_b3d447abc3ec553f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_get_external_value_content@
foreign import ccall unsafe "hs_bindgen_425774f5ed8d355b" hs_bindgen_425774f5ed8d355b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexternal_Generated.Nix.External_Unsafe_nix_get_external_value_content@
hs_bindgen_425774f5ed8d355b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Value.ExternalValue
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_425774f5ed8d355b =
  RIP.fromFFIType hs_bindgen_425774f5ed8d355b_base

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
  hs_bindgen_425774f5ed8d355b
