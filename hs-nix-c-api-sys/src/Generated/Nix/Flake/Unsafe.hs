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
  , "nix_flake_settings *hs_bindgen_1acb73e23e33613b ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_flake_settings_new)(arg1);"
  , "}"
  , "void hs_bindgen_fde54fe7f2e8d74b ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  (nix_flake_settings_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_c908f898fe5ad9ff ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return (nix_flake_settings_add_to_eval_state_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_flake_reference_parse_flags *hs_bindgen_ed0e4921e7db974b ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_77705d4896ca17af ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_parse_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_571268588130e7ca ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_set_base_directory)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_flake_lock_flags *hs_bindgen_a371f860f0885e51 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4ef4267e0c66929a ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_lock_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_6669d9d52fe7484d ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_check)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_daf4570743f6fb1f ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_virtual)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_51dd1b2a30551c1b ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_write_as_needed)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_b0f801ae7f3593db ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_add_input_override)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_locked_flake *hs_bindgen_382d07cf598b8a71 ("
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
  , "void hs_bindgen_8e4c85554c8ee102 ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  (nix_locked_flake_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_9cb6a31f26915e87 ("
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
  , "void hs_bindgen_7c34650d6e0045a9 ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_free)(arg1);"
  , "}"
  , "nix_value *hs_bindgen_18622227a1528f23 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return (nix_locked_flake_get_output_attrs)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_new@
foreign import ccall unsafe "hs_bindgen_1acb73e23e33613b" hs_bindgen_1acb73e23e33613b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_new@
hs_bindgen_1acb73e23e33613b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO (RIP.Ptr Nix_flake_settings)
hs_bindgen_1acb73e23e33613b =
  RIP.fromFFIType hs_bindgen_1acb73e23e33613b_base

{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO (RIP.Ptr Nix_flake_settings)
nix_flake_settings_new = hs_bindgen_1acb73e23e33613b

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_free@
foreign import ccall unsafe "hs_bindgen_fde54fe7f2e8d74b" hs_bindgen_fde54fe7f2e8d74b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_free@
hs_bindgen_fde54fe7f2e8d74b ::
     RIP.Ptr Nix_flake_settings
  -> IO ()
hs_bindgen_fde54fe7f2e8d74b =
  RIP.fromFFIType hs_bindgen_fde54fe7f2e8d74b_base

{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free ::
     RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_settings_free = hs_bindgen_fde54fe7f2e8d74b

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall unsafe "hs_bindgen_c908f898fe5ad9ff" hs_bindgen_c908f898fe5ad9ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_c908f898fe5ad9ff ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c908f898fe5ad9ff =
  RIP.fromFFIType hs_bindgen_c908f898fe5ad9ff_base

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
  hs_bindgen_c908f898fe5ad9ff

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_new@
foreign import ccall unsafe "hs_bindgen_ed0e4921e7db974b" hs_bindgen_ed0e4921e7db974b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_new@
hs_bindgen_ed0e4921e7db974b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_reference_parse_flags)
hs_bindgen_ed0e4921e7db974b =
  RIP.fromFFIType hs_bindgen_ed0e4921e7db974b_base

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
  hs_bindgen_ed0e4921e7db974b

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_free@
foreign import ccall unsafe "hs_bindgen_77705d4896ca17af" hs_bindgen_77705d4896ca17af_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_free@
hs_bindgen_77705d4896ca17af ::
     RIP.Ptr Nix_flake_reference_parse_flags
  -> IO ()
hs_bindgen_77705d4896ca17af =
  RIP.fromFFIType hs_bindgen_77705d4896ca17af_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free ::
     RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @flags@
  -> IO ()
nix_flake_reference_parse_flags_free =
  hs_bindgen_77705d4896ca17af

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall unsafe "hs_bindgen_571268588130e7ca" hs_bindgen_571268588130e7ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_571268588130e7ca ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_reference_parse_flags
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.CSize
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_571268588130e7ca =
  RIP.fromFFIType hs_bindgen_571268588130e7ca_base

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
  hs_bindgen_571268588130e7ca

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_new@
foreign import ccall unsafe "hs_bindgen_a371f860f0885e51" hs_bindgen_a371f860f0885e51_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_new@
hs_bindgen_a371f860f0885e51 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_lock_flags)
hs_bindgen_a371f860f0885e51 =
  RIP.fromFFIType hs_bindgen_a371f860f0885e51_base

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
  hs_bindgen_a371f860f0885e51

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_free@
foreign import ccall unsafe "hs_bindgen_4ef4267e0c66929a" hs_bindgen_4ef4267e0c66929a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_free@
hs_bindgen_4ef4267e0c66929a ::
     RIP.Ptr Nix_flake_lock_flags
  -> IO ()
hs_bindgen_4ef4267e0c66929a =
  RIP.fromFFIType hs_bindgen_4ef4267e0c66929a_base

{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free ::
     RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_lock_flags_free =
  hs_bindgen_4ef4267e0c66929a

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_check@
foreign import ccall unsafe "hs_bindgen_6669d9d52fe7484d" hs_bindgen_6669d9d52fe7484d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_check@
hs_bindgen_6669d9d52fe7484d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_6669d9d52fe7484d =
  RIP.fromFFIType hs_bindgen_6669d9d52fe7484d_base

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
  hs_bindgen_6669d9d52fe7484d

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall unsafe "hs_bindgen_daf4570743f6fb1f" hs_bindgen_daf4570743f6fb1f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_daf4570743f6fb1f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_daf4570743f6fb1f =
  RIP.fromFFIType hs_bindgen_daf4570743f6fb1f_base

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
  hs_bindgen_daf4570743f6fb1f

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall unsafe "hs_bindgen_51dd1b2a30551c1b" hs_bindgen_51dd1b2a30551c1b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_51dd1b2a30551c1b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_51dd1b2a30551c1b =
  RIP.fromFFIType hs_bindgen_51dd1b2a30551c1b_base

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
  hs_bindgen_51dd1b2a30551c1b

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_add_input_override@
foreign import ccall unsafe "hs_bindgen_b0f801ae7f3593db" hs_bindgen_b0f801ae7f3593db_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock_flags_add_input_override@
hs_bindgen_b0f801ae7f3593db ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_flake_reference
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b0f801ae7f3593db =
  RIP.fromFFIType hs_bindgen_b0f801ae7f3593db_base

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
  hs_bindgen_b0f801ae7f3593db

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock@
foreign import ccall unsafe "hs_bindgen_382d07cf598b8a71" hs_bindgen_382d07cf598b8a71_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_lock@
hs_bindgen_382d07cf598b8a71 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_flake_lock_flags
  -> RIP.Ptr Nix_flake_reference
  -> IO (RIP.Ptr Nix_locked_flake)
hs_bindgen_382d07cf598b8a71 =
  RIP.fromFFIType hs_bindgen_382d07cf598b8a71_base

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
nix_flake_lock = hs_bindgen_382d07cf598b8a71

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_free@
foreign import ccall unsafe "hs_bindgen_8e4c85554c8ee102" hs_bindgen_8e4c85554c8ee102_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_free@
hs_bindgen_8e4c85554c8ee102 ::
     RIP.Ptr Nix_locked_flake
  -> IO ()
hs_bindgen_8e4c85554c8ee102 =
  RIP.fromFFIType hs_bindgen_8e4c85554c8ee102_base

{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free ::
     RIP.Ptr Nix_locked_flake
     -- ^ __C declaration:__ @locked_flake@
  -> IO ()
nix_locked_flake_free = hs_bindgen_8e4c85554c8ee102

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_and_fragment_from_string@
foreign import ccall unsafe "hs_bindgen_9cb6a31f26915e87" hs_bindgen_9cb6a31f26915e87_base ::
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

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_and_fragment_from_string@
hs_bindgen_9cb6a31f26915e87 ::
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
hs_bindgen_9cb6a31f26915e87 =
  RIP.fromFFIType hs_bindgen_9cb6a31f26915e87_base

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
  hs_bindgen_9cb6a31f26915e87

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_free@
foreign import ccall unsafe "hs_bindgen_7c34650d6e0045a9" hs_bindgen_7c34650d6e0045a9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_flake_reference_free@
hs_bindgen_7c34650d6e0045a9 ::
     RIP.Ptr Nix_flake_reference
  -> IO ()
hs_bindgen_7c34650d6e0045a9 =
  RIP.fromFFIType hs_bindgen_7c34650d6e0045a9_base

{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free ::
     RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_flake_reference_free =
  hs_bindgen_7c34650d6e0045a9

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_get_output_attrs@
foreign import ccall unsafe "hs_bindgen_18622227a1528f23" hs_bindgen_18622227a1528f23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_Unsafe_nix_locked_flake_get_output_attrs@
hs_bindgen_18622227a1528f23 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_locked_flake
  -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)
hs_bindgen_18622227a1528f23 =
  RIP.fromFFIType hs_bindgen_18622227a1528f23_base

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
  hs_bindgen_18622227a1528f23
