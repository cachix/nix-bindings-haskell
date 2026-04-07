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
  , "nix_flake_settings *hs_bindgen_1810421da2a89a14 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_flake_settings_new)(arg1);"
  , "}"
  , "void hs_bindgen_c18f72ea48002495 ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  (nix_flake_settings_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_04073196acf82310 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return (nix_flake_settings_add_to_eval_state_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_flake_reference_parse_flags *hs_bindgen_ff9605015adf7d4f ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5e3d14612eb81282 ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_parse_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_c6b81a8e91dd48cb ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return (nix_flake_reference_parse_flags_set_base_directory)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_flake_lock_flags *hs_bindgen_a1c6b2c723673d4b ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_new)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d0df595429f79d3e ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  (nix_flake_lock_flags_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_05a08329ff73a83f ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_check)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_62d6fa44116c063c ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_virtual)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_7282f44e44117419 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_set_mode_write_as_needed)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_9f0a91b70bd3ccd1 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return (nix_flake_lock_flags_add_input_override)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_locked_flake *hs_bindgen_1e9b3605093d83e0 ("
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
  , "void hs_bindgen_4531b6d521c202fa ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  (nix_locked_flake_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_a9c213c072f7a943 ("
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
  , "void hs_bindgen_4cf16fd2e6ac4e83 ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  (nix_flake_reference_free)(arg1);"
  , "}"
  , "nix_value *hs_bindgen_0c46fe07e04204f2 ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return (nix_locked_flake_get_output_attrs)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_new@
foreign import ccall safe "hs_bindgen_1810421da2a89a14" hs_bindgen_1810421da2a89a14_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_new@
hs_bindgen_1810421da2a89a14 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO (RIP.Ptr Nix_flake_settings)
hs_bindgen_1810421da2a89a14 =
  RIP.fromFFIType hs_bindgen_1810421da2a89a14_base

{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO (RIP.Ptr Nix_flake_settings)
nix_flake_settings_new = hs_bindgen_1810421da2a89a14

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_free@
foreign import ccall safe "hs_bindgen_c18f72ea48002495" hs_bindgen_c18f72ea48002495_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_free@
hs_bindgen_c18f72ea48002495 ::
     RIP.Ptr Nix_flake_settings
  -> IO ()
hs_bindgen_c18f72ea48002495 =
  RIP.fromFFIType hs_bindgen_c18f72ea48002495_base

{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free ::
     RIP.Ptr Nix_flake_settings
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_settings_free = hs_bindgen_c18f72ea48002495

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall safe "hs_bindgen_04073196acf82310" hs_bindgen_04073196acf82310_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_04073196acf82310 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_04073196acf82310 =
  RIP.fromFFIType hs_bindgen_04073196acf82310_base

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
  hs_bindgen_04073196acf82310

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_new@
foreign import ccall safe "hs_bindgen_ff9605015adf7d4f" hs_bindgen_ff9605015adf7d4f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_new@
hs_bindgen_ff9605015adf7d4f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_reference_parse_flags)
hs_bindgen_ff9605015adf7d4f =
  RIP.fromFFIType hs_bindgen_ff9605015adf7d4f_base

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
  hs_bindgen_ff9605015adf7d4f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_free@
foreign import ccall safe "hs_bindgen_5e3d14612eb81282" hs_bindgen_5e3d14612eb81282_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_free@
hs_bindgen_5e3d14612eb81282 ::
     RIP.Ptr Nix_flake_reference_parse_flags
  -> IO ()
hs_bindgen_5e3d14612eb81282 =
  RIP.fromFFIType hs_bindgen_5e3d14612eb81282_base

{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free ::
     RIP.Ptr Nix_flake_reference_parse_flags
     -- ^ __C declaration:__ @flags@
  -> IO ()
nix_flake_reference_parse_flags_free =
  hs_bindgen_5e3d14612eb81282

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall safe "hs_bindgen_c6b81a8e91dd48cb" hs_bindgen_c6b81a8e91dd48cb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_c6b81a8e91dd48cb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_reference_parse_flags
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.CSize
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c6b81a8e91dd48cb =
  RIP.fromFFIType hs_bindgen_c6b81a8e91dd48cb_base

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
  hs_bindgen_c6b81a8e91dd48cb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_new@
foreign import ccall safe "hs_bindgen_a1c6b2c723673d4b" hs_bindgen_a1c6b2c723673d4b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_new@
hs_bindgen_a1c6b2c723673d4b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> IO (RIP.Ptr Nix_flake_lock_flags)
hs_bindgen_a1c6b2c723673d4b =
  RIP.fromFFIType hs_bindgen_a1c6b2c723673d4b_base

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
  hs_bindgen_a1c6b2c723673d4b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_free@
foreign import ccall safe "hs_bindgen_d0df595429f79d3e" hs_bindgen_d0df595429f79d3e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_free@
hs_bindgen_d0df595429f79d3e ::
     RIP.Ptr Nix_flake_lock_flags
  -> IO ()
hs_bindgen_d0df595429f79d3e =
  RIP.fromFFIType hs_bindgen_d0df595429f79d3e_base

{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free ::
     RIP.Ptr Nix_flake_lock_flags
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_flake_lock_flags_free =
  hs_bindgen_d0df595429f79d3e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_check@
foreign import ccall safe "hs_bindgen_05a08329ff73a83f" hs_bindgen_05a08329ff73a83f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_check@
hs_bindgen_05a08329ff73a83f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_05a08329ff73a83f =
  RIP.fromFFIType hs_bindgen_05a08329ff73a83f_base

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
  hs_bindgen_05a08329ff73a83f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall safe "hs_bindgen_62d6fa44116c063c" hs_bindgen_62d6fa44116c063c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_62d6fa44116c063c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_62d6fa44116c063c =
  RIP.fromFFIType hs_bindgen_62d6fa44116c063c_base

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
  hs_bindgen_62d6fa44116c063c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall safe "hs_bindgen_7282f44e44117419" hs_bindgen_7282f44e44117419_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_7282f44e44117419 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_7282f44e44117419 =
  RIP.fromFFIType hs_bindgen_7282f44e44117419_base

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
  hs_bindgen_7282f44e44117419

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_add_input_override@
foreign import ccall safe "hs_bindgen_9f0a91b70bd3ccd1" hs_bindgen_9f0a91b70bd3ccd1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock_flags_add_input_override@
hs_bindgen_9f0a91b70bd3ccd1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_lock_flags
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_flake_reference
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9f0a91b70bd3ccd1 =
  RIP.fromFFIType hs_bindgen_9f0a91b70bd3ccd1_base

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
  hs_bindgen_9f0a91b70bd3ccd1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock@
foreign import ccall safe "hs_bindgen_1e9b3605093d83e0" hs_bindgen_1e9b3605093d83e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_lock@
hs_bindgen_1e9b3605093d83e0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_flake_lock_flags
  -> RIP.Ptr Nix_flake_reference
  -> IO (RIP.Ptr Nix_locked_flake)
hs_bindgen_1e9b3605093d83e0 =
  RIP.fromFFIType hs_bindgen_1e9b3605093d83e0_base

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
nix_flake_lock = hs_bindgen_1e9b3605093d83e0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_free@
foreign import ccall safe "hs_bindgen_4531b6d521c202fa" hs_bindgen_4531b6d521c202fa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_free@
hs_bindgen_4531b6d521c202fa ::
     RIP.Ptr Nix_locked_flake
  -> IO ()
hs_bindgen_4531b6d521c202fa =
  RIP.fromFFIType hs_bindgen_4531b6d521c202fa_base

{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free ::
     RIP.Ptr Nix_locked_flake
     -- ^ __C declaration:__ @locked_flake@
  -> IO ()
nix_locked_flake_free = hs_bindgen_4531b6d521c202fa

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_and_fragment_from_string@
foreign import ccall safe "hs_bindgen_a9c213c072f7a943" hs_bindgen_a9c213c072f7a943_base ::
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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_and_fragment_from_string@
hs_bindgen_a9c213c072f7a943 ::
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
hs_bindgen_a9c213c072f7a943 =
  RIP.fromFFIType hs_bindgen_a9c213c072f7a943_base

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
  hs_bindgen_a9c213c072f7a943

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_free@
foreign import ccall safe "hs_bindgen_4cf16fd2e6ac4e83" hs_bindgen_4cf16fd2e6ac4e83_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_flake_reference_free@
hs_bindgen_4cf16fd2e6ac4e83 ::
     RIP.Ptr Nix_flake_reference
  -> IO ()
hs_bindgen_4cf16fd2e6ac4e83 =
  RIP.fromFFIType hs_bindgen_4cf16fd2e6ac4e83_base

{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free ::
     RIP.Ptr Nix_flake_reference
     -- ^ __C declaration:__ @store@
  -> IO ()
nix_flake_reference_free =
  hs_bindgen_4cf16fd2e6ac4e83

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_get_output_attrs@
foreign import ccall safe "hs_bindgen_0c46fe07e04204f2" hs_bindgen_0c46fe07e04204f2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_Safe_nix_locked_flake_get_output_attrs@
hs_bindgen_0c46fe07e04204f2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_flake_settings
  -> RIP.Ptr Generated.Nix.Expr.EvalState
  -> RIP.Ptr Nix_locked_flake
  -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)
hs_bindgen_0c46fe07e04204f2 =
  RIP.fromFFIType hs_bindgen_0c46fe07e04204f2_base

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
  hs_bindgen_0c46fe07e04204f2
