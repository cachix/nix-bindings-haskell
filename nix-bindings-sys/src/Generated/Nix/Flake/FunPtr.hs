{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Flake.FunPtr
    ( Generated.Nix.Flake.FunPtr.nix_flake_settings_new
    , Generated.Nix.Flake.FunPtr.nix_flake_settings_free
    , Generated.Nix.Flake.FunPtr.nix_flake_settings_add_to_eval_state_builder
    , Generated.Nix.Flake.FunPtr.nix_flake_reference_parse_flags_new
    , Generated.Nix.Flake.FunPtr.nix_flake_reference_parse_flags_free
    , Generated.Nix.Flake.FunPtr.nix_flake_reference_parse_flags_set_base_directory
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_new
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_free
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_set_mode_check
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_set_mode_virtual
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_set_mode_write_as_needed
    , Generated.Nix.Flake.FunPtr.nix_flake_lock_flags_add_input_override
    , Generated.Nix.Flake.FunPtr.nix_flake_lock
    , Generated.Nix.Flake.FunPtr.nix_locked_flake_free
    , Generated.Nix.Flake.FunPtr.nix_flake_reference_and_fragment_from_string
    , Generated.Nix.Flake.FunPtr.nix_flake_reference_free
    , Generated.Nix.Flake.FunPtr.nix_locked_flake_get_output_attrs
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
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new */"
  , "__attribute__ ((const))"
  , "nix_flake_settings *(*hs_bindgen_1a645dcfe7c0e320 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_settings_new;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_194f74bb184f645d (void)) ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_settings_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_be50c2005a34ac55 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return &nix_flake_settings_add_to_eval_state_builder;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new */"
  , "__attribute__ ((const))"
  , "nix_flake_reference_parse_flags *(*hs_bindgen_bfc77367454b63a7 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_new;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e163479a399b7c7 (void)) ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_0952d4450e4890c1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_set_base_directory;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new */"
  , "__attribute__ ((const))"
  , "nix_flake_lock_flags *(*hs_bindgen_cb38ff29d6784b8c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_new;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7199a3ab880aa93f (void)) ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_a30f5b071cb7f3fe (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_check;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_659273318d42549e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_virtual;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_592048b41164ab19 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_write_as_needed;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_36a4a90d7ed46053 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_add_input_override;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock */"
  , "__attribute__ ((const))"
  , "nix_locked_flake *(*hs_bindgen_ad1829b0a0efc6ab (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_fetchers_settings *arg2,"
  , "  nix_flake_settings *arg3,"
  , "  EvalState *arg4,"
  , "  nix_flake_lock_flags *arg5,"
  , "  nix_flake_reference *arg6"
  , ")"
  , "{"
  , "  return &nix_flake_lock;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_74a597c63afd96fa (void)) ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  return &nix_locked_flake_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9f55f86991e19d8e (void)) ("
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
  , "  return &nix_flake_reference_and_fragment_from_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f21c6c233c3e71e2 (void)) ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_reference_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_ff30c8c41ccf576b (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return &nix_locked_flake_get_output_attrs;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new@
foreign import ccall unsafe "hs_bindgen_1a645dcfe7c0e320" hs_bindgen_1a645dcfe7c0e320_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new@
hs_bindgen_1a645dcfe7c0e320 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_flake_settings)))
hs_bindgen_1a645dcfe7c0e320 =
  RIP.fromFFIType hs_bindgen_1a645dcfe7c0e320_base

{-# NOINLINE nix_flake_settings_new #-}
{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_flake_settings))
nix_flake_settings_new =
  RIP.unsafePerformIO hs_bindgen_1a645dcfe7c0e320

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free@
foreign import ccall unsafe "hs_bindgen_194f74bb184f645d" hs_bindgen_194f74bb184f645d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free@
hs_bindgen_194f74bb184f645d :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_settings) -> IO ()))
hs_bindgen_194f74bb184f645d =
  RIP.fromFFIType hs_bindgen_194f74bb184f645d_base

{-# NOINLINE nix_flake_settings_free #-}
{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_settings) -> IO ())
nix_flake_settings_free =
  RIP.unsafePerformIO hs_bindgen_194f74bb184f645d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall unsafe "hs_bindgen_be50c2005a34ac55" hs_bindgen_be50c2005a34ac55_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_be50c2005a34ac55 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_be50c2005a34ac55 =
  RIP.fromFFIType hs_bindgen_be50c2005a34ac55_base

{-# NOINLINE nix_flake_settings_add_to_eval_state_builder #-}
{-| __C declaration:__ @nix_flake_settings_add_to_eval_state_builder@

    __defined at:__ @nix_api_flake.h 86:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_add_to_eval_state_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err)
nix_flake_settings_add_to_eval_state_builder =
  RIP.unsafePerformIO hs_bindgen_be50c2005a34ac55

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new@
foreign import ccall unsafe "hs_bindgen_bfc77367454b63a7" hs_bindgen_bfc77367454b63a7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new@
hs_bindgen_bfc77367454b63a7 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_reference_parse_flags)))
hs_bindgen_bfc77367454b63a7 =
  RIP.fromFFIType hs_bindgen_bfc77367454b63a7_base

{-# NOINLINE nix_flake_reference_parse_flags_new #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_new@

    __defined at:__ @nix_api_flake.h 93:1@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_reference_parse_flags))
nix_flake_reference_parse_flags_new =
  RIP.unsafePerformIO hs_bindgen_bfc77367454b63a7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free@
foreign import ccall unsafe "hs_bindgen_2e163479a399b7c7" hs_bindgen_2e163479a399b7c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free@
hs_bindgen_2e163479a399b7c7 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_reference_parse_flags) -> IO ()))
hs_bindgen_2e163479a399b7c7 =
  RIP.fromFFIType hs_bindgen_2e163479a399b7c7_base

{-# NOINLINE nix_flake_reference_parse_flags_free #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_reference_parse_flags) -> IO ())
nix_flake_reference_parse_flags_free =
  RIP.unsafePerformIO hs_bindgen_2e163479a399b7c7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall unsafe "hs_bindgen_0952d4450e4890c1" hs_bindgen_0952d4450e4890c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_0952d4450e4890c1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_0952d4450e4890c1 =
  RIP.fromFFIType hs_bindgen_0952d4450e4890c1_base

{-# NOINLINE nix_flake_reference_parse_flags_set_base_directory #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_set_base_directory@

    __defined at:__ @nix_api_flake.h 110:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_set_base_directory :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> IO Generated.Nix.Util.Nix_err)
nix_flake_reference_parse_flags_set_base_directory =
  RIP.unsafePerformIO hs_bindgen_0952d4450e4890c1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new@
foreign import ccall unsafe "hs_bindgen_cb38ff29d6784b8c" hs_bindgen_cb38ff29d6784b8c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new@
hs_bindgen_cb38ff29d6784b8c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_lock_flags)))
hs_bindgen_cb38ff29d6784b8c =
  RIP.fromFFIType hs_bindgen_cb38ff29d6784b8c_base

{-# NOINLINE nix_flake_lock_flags_new #-}
{-| __C declaration:__ @nix_flake_lock_flags_new@

    __defined at:__ @nix_api_flake.h 120:24@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_lock_flags))
nix_flake_lock_flags_new =
  RIP.unsafePerformIO hs_bindgen_cb38ff29d6784b8c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free@
foreign import ccall unsafe "hs_bindgen_7199a3ab880aa93f" hs_bindgen_7199a3ab880aa93f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free@
hs_bindgen_7199a3ab880aa93f :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_lock_flags) -> IO ()))
hs_bindgen_7199a3ab880aa93f =
  RIP.fromFFIType hs_bindgen_7199a3ab880aa93f_base

{-# NOINLINE nix_flake_lock_flags_free #-}
{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_lock_flags) -> IO ())
nix_flake_lock_flags_free =
  RIP.unsafePerformIO hs_bindgen_7199a3ab880aa93f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check@
foreign import ccall unsafe "hs_bindgen_a30f5b071cb7f3fe" hs_bindgen_a30f5b071cb7f3fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check@
hs_bindgen_a30f5b071cb7f3fe :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_a30f5b071cb7f3fe =
  RIP.fromFFIType hs_bindgen_a30f5b071cb7f3fe_base

{-# NOINLINE nix_flake_lock_flags_set_mode_check #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_check@

    __defined at:__ @nix_api_flake.h 137:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_check :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_check =
  RIP.unsafePerformIO hs_bindgen_a30f5b071cb7f3fe

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall unsafe "hs_bindgen_659273318d42549e" hs_bindgen_659273318d42549e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_659273318d42549e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_659273318d42549e =
  RIP.fromFFIType hs_bindgen_659273318d42549e_base

{-# NOINLINE nix_flake_lock_flags_set_mode_virtual #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_virtual@

    __defined at:__ @nix_api_flake.h 147:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_virtual :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_virtual =
  RIP.unsafePerformIO hs_bindgen_659273318d42549e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall unsafe "hs_bindgen_592048b41164ab19" hs_bindgen_592048b41164ab19_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_592048b41164ab19 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_592048b41164ab19 =
  RIP.fromFFIType hs_bindgen_592048b41164ab19_base

{-# NOINLINE nix_flake_lock_flags_set_mode_write_as_needed #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_write_as_needed@

    __defined at:__ @nix_api_flake.h 157:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_write_as_needed :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_write_as_needed =
  RIP.unsafePerformIO hs_bindgen_592048b41164ab19

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override@
foreign import ccall unsafe "hs_bindgen_36a4a90d7ed46053" hs_bindgen_36a4a90d7ed46053_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override@
hs_bindgen_36a4a90d7ed46053 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_flake_reference) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_36a4a90d7ed46053 =
  RIP.fromFFIType hs_bindgen_36a4a90d7ed46053_base

{-# NOINLINE nix_flake_lock_flags_add_input_override #-}
{-| __C declaration:__ @nix_flake_lock_flags_add_input_override@

    __defined at:__ @nix_api_flake.h 170:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_add_input_override :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_flake_reference) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_add_input_override =
  RIP.unsafePerformIO hs_bindgen_36a4a90d7ed46053

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock@
foreign import ccall unsafe "hs_bindgen_ad1829b0a0efc6ab" hs_bindgen_ad1829b0a0efc6ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock@
hs_bindgen_ad1829b0a0efc6ab :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_flake_lock_flags) -> (RIP.Ptr Nix_flake_reference) -> IO (RIP.Ptr Nix_locked_flake)))
hs_bindgen_ad1829b0a0efc6ab =
  RIP.fromFFIType hs_bindgen_ad1829b0a0efc6ab_base

{-# NOINLINE nix_flake_lock #-}
{-| __C declaration:__ @nix_flake_lock@

    __defined at:__ @nix_api_flake.h 180:20@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_flake_lock_flags) -> (RIP.Ptr Nix_flake_reference) -> IO (RIP.Ptr Nix_locked_flake))
nix_flake_lock =
  RIP.unsafePerformIO hs_bindgen_ad1829b0a0efc6ab

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free@
foreign import ccall unsafe "hs_bindgen_74a597c63afd96fa" hs_bindgen_74a597c63afd96fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free@
hs_bindgen_74a597c63afd96fa :: IO (RIP.FunPtr ((RIP.Ptr Nix_locked_flake) -> IO ()))
hs_bindgen_74a597c63afd96fa =
  RIP.fromFFIType hs_bindgen_74a597c63afd96fa_base

{-# NOINLINE nix_locked_flake_free #-}
{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free :: RIP.FunPtr ((RIP.Ptr Nix_locked_flake) -> IO ())
nix_locked_flake_free =
  RIP.unsafePerformIO hs_bindgen_74a597c63afd96fa

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string@
foreign import ccall unsafe "hs_bindgen_9f55f86991e19d8e" hs_bindgen_9f55f86991e19d8e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string@
hs_bindgen_9f55f86991e19d8e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_flake_reference)) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9f55f86991e19d8e =
  RIP.fromFFIType hs_bindgen_9f55f86991e19d8e_base

{-# NOINLINE nix_flake_reference_and_fragment_from_string #-}
{-| __C declaration:__ @nix_flake_reference_and_fragment_from_string@

    __defined at:__ @nix_api_flake.h 212:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_and_fragment_from_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_flake_reference)) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_flake_reference_and_fragment_from_string =
  RIP.unsafePerformIO hs_bindgen_9f55f86991e19d8e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free@
foreign import ccall unsafe "hs_bindgen_f21c6c233c3e71e2" hs_bindgen_f21c6c233c3e71e2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free@
hs_bindgen_f21c6c233c3e71e2 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_reference) -> IO ()))
hs_bindgen_f21c6c233c3e71e2 =
  RIP.fromFFIType hs_bindgen_f21c6c233c3e71e2_base

{-# NOINLINE nix_flake_reference_free #-}
{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_reference) -> IO ())
nix_flake_reference_free =
  RIP.unsafePerformIO hs_bindgen_f21c6c233c3e71e2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs@
foreign import ccall unsafe "hs_bindgen_ff30c8c41ccf576b" hs_bindgen_ff30c8c41ccf576b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs@
hs_bindgen_ff30c8c41ccf576b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_locked_flake) -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)))
hs_bindgen_ff30c8c41ccf576b =
  RIP.fromFFIType hs_bindgen_ff30c8c41ccf576b_base

{-# NOINLINE nix_locked_flake_get_output_attrs #-}
{-| __C declaration:__ @nix_locked_flake_get_output_attrs@

    __defined at:__ @nix_api_flake.h 239:13@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_get_output_attrs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_locked_flake) -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value))
nix_locked_flake_get_output_attrs =
  RIP.unsafePerformIO hs_bindgen_ff30c8c41ccf576b
