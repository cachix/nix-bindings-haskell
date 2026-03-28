{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Flake.Safe
    ( Generated.Nix.Flake.Safe.nix_flake_settings_new
    , Generated.Nix.Flake.Safe.nix_flake_settings_free
    , Generated.Nix.Flake.Safe.nix_flake_settings_add_to_eval_state_builder
    , Generated.Nix.Flake.Safe.nix_flake_reference_parse_flags_new
    , Generated.Nix.Flake.Safe.nix_flake_reference_parse_flags_free
    , Generated.Nix.Flake.Safe.nix_flake_reference_parse_flags_set_base_directory
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_new
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_free
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_set_mode_check
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_set_mode_virtual
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_set_mode_write_as_needed
    , Generated.Nix.Flake.Safe.nix_flake_lock_flags_add_input_override
    , Generated.Nix.Flake.Safe.nix_flake_lock
    , Generated.Nix.Flake.Safe.nix_locked_flake_free
    , Generated.Nix.Flake.Safe.nix_flake_reference_and_fragment_from_string
    , Generated.Nix.Flake.Safe.nix_flake_reference_free
    , Generated.Nix.Flake.Safe.nix_locked_flake_get_output_attrs
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
  , "nix_flake_settings *hs_bindgen_208b8b4087af847c ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_flake_settings_new)(arg1);"
  , "}"
  , "void hs_bindgen_2018c7b5dceed200 ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  (nix_flake_settings_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_843a11bd6fe4d2ab ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return (nix_flake_settings_add_to_eval_state_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_flake_reference_parse_flags *hs_bindgen_4709813cee2f79f1 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8551cedeaff7067f ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_parse_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_6be8903af46e9d53 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_set_base_directory)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_flake_lock_flags *hs_bindgen_d3bf98cdea1c5fb9 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_078ce8ab3dc254ee ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_lock_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_15fb558626674be5 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_check)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_84cb0f8d5eb9def7 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_virtual)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_0d54b991c03f9081 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_write_as_needed)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_cddc58bad74b8914 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_add_input_override)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_locked_flake *hs_bindgen_64f65c293c65e484 ("
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
  , "void hs_bindgen_5bacfbe69e062ef4 ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  (nix_locked_flake_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_83745adfa3b7d56f ("
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
  , "void hs_bindgen_df62d09fb0ba8c1e ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_free)(arg1);"
  , "}"
  , "nix_value *hs_bindgen_0d41443132109895 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return (nix_locked_flake_get_output_attrs)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_new@
foreign import ccall safe "hs_bindgen_208b8b4087af847c" hs_bindgen_208b8b4087af847c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_new@
hs_bindgen_208b8b4087af847c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO (RIP.Ptr Nix_flake_settings)
hs_bindgen_208b8b4087af847c =
  RIP.fromFFIType hs_bindgen_208b8b4087af847c_base

{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO (RIP.Ptr Nix_flake_settings)
nix_flake_settings_new = hs_bindgen_208b8b4087af847c

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_free@
foreign import ccall safe "hs_bindgen_2018c7b5dceed200" hs_bindgen_2018c7b5dceed200_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_free@
hs_bindgen_2018c7b5dceed200 ::
     RIP.Ptr Nix_flake_settings
  -> IO ()
hs_bindgen_2018c7b5dceed200 =
  RIP.fromFFIType hs_bindgen_2018c7b5dceed200_base

{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free ::
     RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_settings_free = hs_bindgen_2018c7b5dceed200

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall safe "hs_bindgen_843a11bd6fe4d2ab" hs_bindgen_843a11bd6fe4d2ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_843a11bd6fe4d2ab ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_843a11bd6fe4d2ab =
  RIP.fromFFIType hs_bindgen_843a11bd6fe4d2ab_base

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
  hs_bindgen_843a11bd6fe4d2ab

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_new@
foreign import ccall safe "hs_bindgen_4709813cee2f79f1" hs_bindgen_4709813cee2f79f1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_new@
hs_bindgen_4709813cee2f79f1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_reference_parse_flags)
hs_bindgen_4709813cee2f79f1 =
  RIP.fromFFIType hs_bindgen_4709813cee2f79f1_base

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
  hs_bindgen_4709813cee2f79f1

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_free@
foreign import ccall safe "hs_bindgen_8551cedeaff7067f" hs_bindgen_8551cedeaff7067f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_free@
hs_bindgen_8551cedeaff7067f ::
     RIP.Ptr Nix_flake_reference_parse_flags
  -> IO ()
hs_bindgen_8551cedeaff7067f =
  RIP.fromFFIType hs_bindgen_8551cedeaff7067f_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free ::
     RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @flags@
  -> IO ()
nix_flake_reference_parse_flags_free =
  hs_bindgen_8551cedeaff7067f

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall safe "hs_bindgen_6be8903af46e9d53" hs_bindgen_6be8903af46e9d53_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_6be8903af46e9d53 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_reference_parse_flags
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.CSize
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_6be8903af46e9d53 =
  RIP.fromFFIType hs_bindgen_6be8903af46e9d53_base

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
  hs_bindgen_6be8903af46e9d53

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_new@
foreign import ccall safe "hs_bindgen_d3bf98cdea1c5fb9" hs_bindgen_d3bf98cdea1c5fb9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_new@
hs_bindgen_d3bf98cdea1c5fb9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_lock_flags)
hs_bindgen_d3bf98cdea1c5fb9 =
  RIP.fromFFIType hs_bindgen_d3bf98cdea1c5fb9_base

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
  hs_bindgen_d3bf98cdea1c5fb9

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_free@
foreign import ccall safe "hs_bindgen_078ce8ab3dc254ee" hs_bindgen_078ce8ab3dc254ee_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_free@
hs_bindgen_078ce8ab3dc254ee ::
     RIP.Ptr Nix_flake_lock_flags
  -> IO ()
hs_bindgen_078ce8ab3dc254ee =
  RIP.fromFFIType hs_bindgen_078ce8ab3dc254ee_base

{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free ::
     RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_lock_flags_free =
  hs_bindgen_078ce8ab3dc254ee

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_check@
foreign import ccall safe "hs_bindgen_15fb558626674be5" hs_bindgen_15fb558626674be5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_check@
hs_bindgen_15fb558626674be5 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_15fb558626674be5 =
  RIP.fromFFIType hs_bindgen_15fb558626674be5_base

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
  hs_bindgen_15fb558626674be5

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall safe "hs_bindgen_84cb0f8d5eb9def7" hs_bindgen_84cb0f8d5eb9def7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_84cb0f8d5eb9def7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_84cb0f8d5eb9def7 =
  RIP.fromFFIType hs_bindgen_84cb0f8d5eb9def7_base

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
  hs_bindgen_84cb0f8d5eb9def7

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall safe "hs_bindgen_0d54b991c03f9081" hs_bindgen_0d54b991c03f9081_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_0d54b991c03f9081 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0d54b991c03f9081 =
  RIP.fromFFIType hs_bindgen_0d54b991c03f9081_base

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
  hs_bindgen_0d54b991c03f9081

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_add_input_override@
foreign import ccall safe "hs_bindgen_cddc58bad74b8914" hs_bindgen_cddc58bad74b8914_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_add_input_override@
hs_bindgen_cddc58bad74b8914 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_flake_reference
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_cddc58bad74b8914 =
  RIP.fromFFIType hs_bindgen_cddc58bad74b8914_base

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
  hs_bindgen_cddc58bad74b8914

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock@
foreign import ccall safe "hs_bindgen_64f65c293c65e484" hs_bindgen_64f65c293c65e484_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock@
hs_bindgen_64f65c293c65e484 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_flake_lock_flags
  -> RIP.Ptr Nix_flake_reference
  -> IO (RIP.Ptr Nix_locked_flake)
hs_bindgen_64f65c293c65e484 =
  RIP.fromFFIType hs_bindgen_64f65c293c65e484_base

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
nix_flake_lock = hs_bindgen_64f65c293c65e484

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_free@
foreign import ccall safe "hs_bindgen_5bacfbe69e062ef4" hs_bindgen_5bacfbe69e062ef4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_free@
hs_bindgen_5bacfbe69e062ef4 ::
     RIP.Ptr Nix_locked_flake
  -> IO ()
hs_bindgen_5bacfbe69e062ef4 =
  RIP.fromFFIType hs_bindgen_5bacfbe69e062ef4_base

{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free ::
     RIP.Ptr Nix_locked_flake
     -- ^ __C declaration:__ @locked_flake@
  -> IO ()
nix_locked_flake_free = hs_bindgen_5bacfbe69e062ef4

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_and_fragment_from_string@
foreign import ccall safe "hs_bindgen_83745adfa3b7d56f" hs_bindgen_83745adfa3b7d56f_base ::
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

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_and_fragment_from_string@
hs_bindgen_83745adfa3b7d56f ::
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
hs_bindgen_83745adfa3b7d56f =
  RIP.fromFFIType hs_bindgen_83745adfa3b7d56f_base

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
  hs_bindgen_83745adfa3b7d56f

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_free@
foreign import ccall safe "hs_bindgen_df62d09fb0ba8c1e" hs_bindgen_df62d09fb0ba8c1e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_free@
hs_bindgen_df62d09fb0ba8c1e ::
     RIP.Ptr Nix_flake_reference
  -> IO ()
hs_bindgen_df62d09fb0ba8c1e =
  RIP.fromFFIType hs_bindgen_df62d09fb0ba8c1e_base

{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free ::
     RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_flake_reference_free =
  hs_bindgen_df62d09fb0ba8c1e

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_get_output_attrs@
foreign import ccall safe "hs_bindgen_0d41443132109895" hs_bindgen_0d41443132109895_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_get_output_attrs@
hs_bindgen_0d41443132109895 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_locked_flake
  -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)
hs_bindgen_0d41443132109895 =
  RIP.fromFFIType hs_bindgen_0d41443132109895_base

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
  hs_bindgen_0d41443132109895
