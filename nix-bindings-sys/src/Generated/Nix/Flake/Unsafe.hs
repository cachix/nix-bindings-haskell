{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Flake.Unsafe
    ( Generated.Nix.Flake.Unsafe.nix_flake_settings_new
    , Generated.Nix.Flake.Unsafe.nix_flake_settings_free
    , Generated.Nix.Flake.Unsafe.nix_flake_settings_add_to_eval_state_builder
    , Generated.Nix.Flake.Unsafe.nix_flake_reference_parse_flags_new
    , Generated.Nix.Flake.Unsafe.nix_flake_reference_parse_flags_free
    , Generated.Nix.Flake.Unsafe.nix_flake_reference_parse_flags_set_base_directory
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_new
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_free
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_set_mode_check
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_set_mode_virtual
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_set_mode_write_as_needed
    , Generated.Nix.Flake.Unsafe.nix_flake_lock_flags_add_input_override
    , Generated.Nix.Flake.Unsafe.nix_flake_lock
    , Generated.Nix.Flake.Unsafe.nix_locked_flake_free
    , Generated.Nix.Flake.Unsafe.nix_flake_reference_and_fragment_from_string
    , Generated.Nix.Flake.Unsafe.nix_flake_reference_free
    , Generated.Nix.Flake.Unsafe.nix_locked_flake_get_output_attrs
    )
  where

import qualified Generated.Nix.Expr
import qualified Generated.Nix.Fetchers
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Flake

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_flake.h>"
  , "nix_flake_settings *hs_bindgen_21a1964a3f3ddd9a ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_flake_settings_new)(arg1);"
  , "}"
  , "void hs_bindgen_6d5995860506341a ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  (nix_flake_settings_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_722e17ae3c410091 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return (nix_flake_settings_add_to_eval_state_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_flake_reference_parse_flags *hs_bindgen_40411ccc8c10df2d ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a7081ee32cef5768 ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_parse_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_ed7f8ad0b9510190 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_set_base_directory)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_flake_lock_flags *hs_bindgen_5de49b83641ebd60 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c4b60608a4ed7841 ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_lock_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_018a039147a0f9e7 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_check)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_c80e7791d8c5bd7e ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_virtual)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_33565dab287b4117 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_write_as_needed)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_9279f027c178a738 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_add_input_override)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_locked_flake *hs_bindgen_9e08e6a664ba6d1d ("
  , "  nix_c_context *arg1,"
  , "  nix_fetchers_settings *arg2,"
  , "  nix_flake_settings *arg3,"
  , "  EvalState *arg4,"
  , "  nix_flake_lock_flags *arg5,"
  , "  nix_flake_reference *arg6"
  , ")"
  , "{"
  , "  return (nix_flake_lock)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_1bd6a456354cf2cf ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  (nix_locked_flake_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_921572f08bc01d76 ("
  , "  nix_c_context *arg1,"
  , "  nix_fetchers_settings *arg2,"
  , "  nix_flake_settings *arg3,"
  , "  nix_flake_reference_parse_flags *arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  nix_flake_reference **arg7,"
  , "  nix_get_string_callback arg8,"
  , "  void *arg9"
  , ")"
  , "{"
  , "  return (nix_flake_reference_and_fragment_from_string)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "void hs_bindgen_f850d5f3161814fb ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_free)(arg1);"
  , "}"
  , "nix_value *hs_bindgen_8b5199a06e597952 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return (nix_locked_flake_get_output_attrs)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_new@
foreign import ccall unsafe "hs_bindgen_21a1964a3f3ddd9a" hs_bindgen_21a1964a3f3ddd9a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_new@
hs_bindgen_21a1964a3f3ddd9a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO (RIP.Ptr Nix_flake_settings)
hs_bindgen_21a1964a3f3ddd9a =
  RIP.fromFFIType hs_bindgen_21a1964a3f3ddd9a_base

{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO (RIP.Ptr Nix_flake_settings)
nix_flake_settings_new = hs_bindgen_21a1964a3f3ddd9a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_free@
foreign import ccall unsafe "hs_bindgen_6d5995860506341a" hs_bindgen_6d5995860506341a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_free@
hs_bindgen_6d5995860506341a ::
     RIP.Ptr Nix_flake_settings
  -> IO ()
hs_bindgen_6d5995860506341a =
  RIP.fromFFIType hs_bindgen_6d5995860506341a_base

{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free ::
     RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_settings_free = hs_bindgen_6d5995860506341a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall unsafe "hs_bindgen_722e17ae3c410091" hs_bindgen_722e17ae3c410091_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_722e17ae3c410091 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_722e17ae3c410091 =
  RIP.fromFFIType hs_bindgen_722e17ae3c410091_base

{-| __C declaration:__ @nix_flake_settings_add_to_eval_state_builder@

    __defined at:__ @nix_api_flake.h 86:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_add_to_eval_state_builder ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_settings_add_to_eval_state_builder =
  hs_bindgen_722e17ae3c410091

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_new@
foreign import ccall unsafe "hs_bindgen_40411ccc8c10df2d" hs_bindgen_40411ccc8c10df2d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_new@
hs_bindgen_40411ccc8c10df2d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_reference_parse_flags)
hs_bindgen_40411ccc8c10df2d =
  RIP.fromFFIType hs_bindgen_40411ccc8c10df2d_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_new@

    __defined at:__ @nix_api_flake.h 93:1@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO (RIP.Ptr Nix_flake_reference_parse_flags)
nix_flake_reference_parse_flags_new =
  hs_bindgen_40411ccc8c10df2d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_free@
foreign import ccall unsafe "hs_bindgen_a7081ee32cef5768" hs_bindgen_a7081ee32cef5768_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_free@
hs_bindgen_a7081ee32cef5768 ::
     RIP.Ptr Nix_flake_reference_parse_flags
  -> IO ()
hs_bindgen_a7081ee32cef5768 =
  RIP.fromFFIType hs_bindgen_a7081ee32cef5768_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free ::
     RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @flags@
  -> IO ()
nix_flake_reference_parse_flags_free =
  hs_bindgen_a7081ee32cef5768

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall unsafe "hs_bindgen_ed7f8ad0b9510190" hs_bindgen_ed7f8ad0b9510190_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_ed7f8ad0b9510190 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_reference_parse_flags
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.CSize
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ed7f8ad0b9510190 =
  RIP.fromFFIType hs_bindgen_ed7f8ad0b9510190_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_set_base_directory@

    __defined at:__ @nix_api_flake.h 110:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_set_base_directory ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @flags@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @baseDirectory@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @baseDirectoryLen@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_reference_parse_flags_set_base_directory =
  hs_bindgen_ed7f8ad0b9510190

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_new@
foreign import ccall unsafe "hs_bindgen_5de49b83641ebd60" hs_bindgen_5de49b83641ebd60_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_new@
hs_bindgen_5de49b83641ebd60 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_lock_flags)
hs_bindgen_5de49b83641ebd60 =
  RIP.fromFFIType hs_bindgen_5de49b83641ebd60_base

{-| __C declaration:__ @nix_flake_lock_flags_new@

    __defined at:__ @nix_api_flake.h 120:24@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO (RIP.Ptr Nix_flake_lock_flags)
nix_flake_lock_flags_new =
  hs_bindgen_5de49b83641ebd60

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_free@
foreign import ccall unsafe "hs_bindgen_c4b60608a4ed7841" hs_bindgen_c4b60608a4ed7841_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_free@
hs_bindgen_c4b60608a4ed7841 ::
     RIP.Ptr Nix_flake_lock_flags
  -> IO ()
hs_bindgen_c4b60608a4ed7841 =
  RIP.fromFFIType hs_bindgen_c4b60608a4ed7841_base

{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free ::
     RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_lock_flags_free =
  hs_bindgen_c4b60608a4ed7841

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_check@
foreign import ccall unsafe "hs_bindgen_018a039147a0f9e7" hs_bindgen_018a039147a0f9e7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_check@
hs_bindgen_018a039147a0f9e7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_018a039147a0f9e7 =
  RIP.fromFFIType hs_bindgen_018a039147a0f9e7_base

{-| __C declaration:__ @nix_flake_lock_flags_set_mode_check@

    __defined at:__ @nix_api_flake.h 137:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_check ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @flags@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_lock_flags_set_mode_check =
  hs_bindgen_018a039147a0f9e7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall unsafe "hs_bindgen_c80e7791d8c5bd7e" hs_bindgen_c80e7791d8c5bd7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_c80e7791d8c5bd7e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c80e7791d8c5bd7e =
  RIP.fromFFIType hs_bindgen_c80e7791d8c5bd7e_base

{-| __C declaration:__ @nix_flake_lock_flags_set_mode_virtual@

    __defined at:__ @nix_api_flake.h 147:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_virtual ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @flags@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_lock_flags_set_mode_virtual =
  hs_bindgen_c80e7791d8c5bd7e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall unsafe "hs_bindgen_33565dab287b4117" hs_bindgen_33565dab287b4117_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_33565dab287b4117 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_33565dab287b4117 =
  RIP.fromFFIType hs_bindgen_33565dab287b4117_base

{-| __C declaration:__ @nix_flake_lock_flags_set_mode_write_as_needed@

    __defined at:__ @nix_api_flake.h 157:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_write_as_needed ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @flags@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_lock_flags_set_mode_write_as_needed =
  hs_bindgen_33565dab287b4117

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_add_input_override@
foreign import ccall unsafe "hs_bindgen_9279f027c178a738" hs_bindgen_9279f027c178a738_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_add_input_override@
hs_bindgen_9279f027c178a738 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_flake_reference
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9279f027c178a738 =
  RIP.fromFFIType hs_bindgen_9279f027c178a738_base

{-| __C declaration:__ @nix_flake_lock_flags_add_input_override@

    __defined at:__ @nix_api_flake.h 170:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_add_input_override ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @flags@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @inputPath@
  -> RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @flakeRef@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_lock_flags_add_input_override =
  hs_bindgen_9279f027c178a738

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock@
foreign import ccall unsafe "hs_bindgen_9e08e6a664ba6d1d" hs_bindgen_9e08e6a664ba6d1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock@
hs_bindgen_9e08e6a664ba6d1d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_flake_lock_flags
  -> RIP.Ptr Nix_flake_reference
  -> IO (RIP.Ptr Nix_locked_flake)
hs_bindgen_9e08e6a664ba6d1d =
  RIP.fromFFIType hs_bindgen_9e08e6a664ba6d1d_base

{-| __C declaration:__ @nix_flake_lock@

    __defined at:__ @nix_api_flake.h 180:20@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
     -- ^ __C declaration:__ @fetchSettings@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> RIP.Ptr Generated.Nix.Expr.EvalState
     -- ^ __C declaration:__ @eval_state@
  -> RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @flags@
  -> RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @flake@
  -> IO (RIP.Ptr Nix_locked_flake)
nix_flake_lock = hs_bindgen_9e08e6a664ba6d1d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_free@
foreign import ccall unsafe "hs_bindgen_1bd6a456354cf2cf" hs_bindgen_1bd6a456354cf2cf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_free@
hs_bindgen_1bd6a456354cf2cf ::
     RIP.Ptr Nix_locked_flake
  -> IO ()
hs_bindgen_1bd6a456354cf2cf =
  RIP.fromFFIType hs_bindgen_1bd6a456354cf2cf_base

{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free ::
     RIP.Ptr Nix_locked_flake
     -- ^ __C declaration:__ @locked_flake@
  -> IO ()
nix_locked_flake_free = hs_bindgen_1bd6a456354cf2cf

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_and_fragment_from_string@
foreign import ccall unsafe "hs_bindgen_921572f08bc01d76" hs_bindgen_921572f08bc01d76_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_and_fragment_from_string@
hs_bindgen_921572f08bc01d76 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Nix_flake_reference_parse_flags
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.CSize
  -> RIP.Ptr (RIP.Ptr Nix_flake_reference)
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_921572f08bc01d76 =
  RIP.fromFFIType hs_bindgen_921572f08bc01d76_base

{-| __C declaration:__ @nix_flake_reference_and_fragment_from_string@

    __defined at:__ @nix_api_flake.h 212:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_and_fragment_from_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
     -- ^ __C declaration:__ @fetchSettings@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @flakeSettings@
  -> RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @parseFlags@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @str@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @strLen@
  -> RIP.Ptr (RIP.Ptr Nix_flake_reference)
     -- ^ __C declaration:__ @flakeReferenceOut@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @fragmentCallback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @fragmentCallbackUserData@
  -> IO Generated.Nix.Util.Nix_err
nix_flake_reference_and_fragment_from_string =
  hs_bindgen_921572f08bc01d76

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_free@
foreign import ccall unsafe "hs_bindgen_f850d5f3161814fb" hs_bindgen_f850d5f3161814fb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_free@
hs_bindgen_f850d5f3161814fb ::
     RIP.Ptr Nix_flake_reference
  -> IO ()
hs_bindgen_f850d5f3161814fb =
  RIP.fromFFIType hs_bindgen_f850d5f3161814fb_base

{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free ::
     RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_flake_reference_free =
  hs_bindgen_f850d5f3161814fb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_get_output_attrs@
foreign import ccall unsafe "hs_bindgen_8b5199a06e597952" hs_bindgen_8b5199a06e597952_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_get_output_attrs@
hs_bindgen_8b5199a06e597952 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_locked_flake
  -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)
hs_bindgen_8b5199a06e597952 =
  RIP.fromFFIType hs_bindgen_8b5199a06e597952_base

{-| __C declaration:__ @nix_locked_flake_get_output_attrs@

    __defined at:__ @nix_api_flake.h 239:13@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_get_output_attrs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> RIP.Ptr Generated.Nix.Expr.EvalState
     -- ^ __C declaration:__ @evalState@
  -> RIP.Ptr Nix_locked_flake
     -- ^ __C declaration:__ @lockedFlake@
  -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)
nix_locked_flake_get_output_attrs =
  hs_bindgen_8b5199a06e597952
