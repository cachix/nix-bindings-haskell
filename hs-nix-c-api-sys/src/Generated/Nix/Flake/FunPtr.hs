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
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new */"
  , "__attribute__ ((const))"
  , "nix_flake_settings *(*hs_bindgen_c33a93b1abd72505 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_settings_new;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cc4cbe91217e5c88 (void)) ("
  , "  nix_flake_settings *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_settings_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9818087b9944887d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  nix_eval_state_builder *arg3"
  , ")"
  , "{"
  , "  return &nix_flake_settings_add_to_eval_state_builder;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new */"
  , "__attribute__ ((const))"
  , "nix_flake_reference_parse_flags *(*hs_bindgen_f764e872093985c1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_new;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_74a733e823bf21c2 (void)) ("
  , "  nix_flake_reference_parse_flags *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_143a8b5f3a5cf5ee (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_reference_parse_flags *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &nix_flake_reference_parse_flags_set_base_directory;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new */"
  , "__attribute__ ((const))"
  , "nix_flake_lock_flags *(*hs_bindgen_02d2a540e2aea4cc (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_new;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_415213750508ebf8 (void)) ("
  , "  nix_flake_lock_flags *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_80c8e058c22fc972 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_check;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_1a2a6042491ce8da (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_virtual;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_2f5e6a991ec80e5b (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_set_mode_write_as_needed;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_dbdb981c7e0c5642 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_lock_flags *arg2,"
  , "  char const *arg3,"
  , "  nix_flake_reference *arg4"
  , ")"
  , "{"
  , "  return &nix_flake_lock_flags_add_input_override;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock */"
  , "__attribute__ ((const))"
  , "nix_locked_flake *(*hs_bindgen_4a7298b2f5561205 (void)) ("
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
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_57563bf3fc62f503 (void)) ("
  , "  nix_locked_flake *arg1"
  , ")"
  , "{"
  , "  return &nix_locked_flake_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_53afc6ec60bc2c5e (void)) ("
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
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_42b38099f7e1a2e7 (void)) ("
  , "  nix_flake_reference *arg1"
  , ")"
  , "{"
  , "  return &nix_flake_reference_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_1de19c31cc8387c2 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_flake_settings *arg2,"
  , "  EvalState *arg3,"
  , "  nix_locked_flake *arg4"
  , ")"
  , "{"
  , "  return &nix_locked_flake_get_output_attrs;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new@
foreign import ccall unsafe "hs_bindgen_c33a93b1abd72505" hs_bindgen_c33a93b1abd72505_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_new@
hs_bindgen_c33a93b1abd72505 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_flake_settings)))
hs_bindgen_c33a93b1abd72505 =
  RIP.fromFFIType hs_bindgen_c33a93b1abd72505_base

{-# NOINLINE nix_flake_settings_new #-}
{-| __C declaration:__ @nix_flake_settings_new@

    __defined at:__ @nix_api_flake.h 69:22@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_flake_settings))
nix_flake_settings_new =
  RIP.unsafePerformIO hs_bindgen_c33a93b1abd72505

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free@
foreign import ccall unsafe "hs_bindgen_cc4cbe91217e5c88" hs_bindgen_cc4cbe91217e5c88_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_free@
hs_bindgen_cc4cbe91217e5c88 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_settings) -> IO ()))
hs_bindgen_cc4cbe91217e5c88 =
  RIP.fromFFIType hs_bindgen_cc4cbe91217e5c88_base

{-# NOINLINE nix_flake_settings_free #-}
{-| __C declaration:__ @nix_flake_settings_free@

    __defined at:__ @nix_api_flake.h 74:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_settings) -> IO ())
nix_flake_settings_free =
  RIP.unsafePerformIO hs_bindgen_cc4cbe91217e5c88

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder@
foreign import ccall unsafe "hs_bindgen_9818087b9944887d" hs_bindgen_9818087b9944887d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_settings_add_to_eval_state_builder@
hs_bindgen_9818087b9944887d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9818087b9944887d =
  RIP.fromFFIType hs_bindgen_9818087b9944887d_base

{-# NOINLINE nix_flake_settings_add_to_eval_state_builder #-}
{-| __C declaration:__ @nix_flake_settings_add_to_eval_state_builder@

    __defined at:__ @nix_api_flake.h 86:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_settings_add_to_eval_state_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err)
nix_flake_settings_add_to_eval_state_builder =
  RIP.unsafePerformIO hs_bindgen_9818087b9944887d

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new@
foreign import ccall unsafe "hs_bindgen_f764e872093985c1" hs_bindgen_f764e872093985c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_new@
hs_bindgen_f764e872093985c1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_reference_parse_flags)))
hs_bindgen_f764e872093985c1 =
  RIP.fromFFIType hs_bindgen_f764e872093985c1_base

{-# NOINLINE nix_flake_reference_parse_flags_new #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_new@

    __defined at:__ @nix_api_flake.h 93:1@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_reference_parse_flags))
nix_flake_reference_parse_flags_new =
  RIP.unsafePerformIO hs_bindgen_f764e872093985c1

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free@
foreign import ccall unsafe "hs_bindgen_74a733e823bf21c2" hs_bindgen_74a733e823bf21c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_free@
hs_bindgen_74a733e823bf21c2 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_reference_parse_flags) -> IO ()))
hs_bindgen_74a733e823bf21c2 =
  RIP.fromFFIType hs_bindgen_74a733e823bf21c2_base

{-# NOINLINE nix_flake_reference_parse_flags_free #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_free@

    __defined at:__ @nix_api_flake.h 100:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_reference_parse_flags) -> IO ())
nix_flake_reference_parse_flags_free =
  RIP.unsafePerformIO hs_bindgen_74a733e823bf21c2

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory@
foreign import ccall unsafe "hs_bindgen_143a8b5f3a5cf5ee" hs_bindgen_143a8b5f3a5cf5ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_parse_flags_set_base_directory@
hs_bindgen_143a8b5f3a5cf5ee :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_143a8b5f3a5cf5ee =
  RIP.fromFFIType hs_bindgen_143a8b5f3a5cf5ee_base

{-# NOINLINE nix_flake_reference_parse_flags_set_base_directory #-}
{-| __C declaration:__ @nix_flake_reference_parse_flags_set_base_directory@

    __defined at:__ @nix_api_flake.h 110:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_parse_flags_set_base_directory :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> IO Generated.Nix.Util.Nix_err)
nix_flake_reference_parse_flags_set_base_directory =
  RIP.unsafePerformIO hs_bindgen_143a8b5f3a5cf5ee

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new@
foreign import ccall unsafe "hs_bindgen_02d2a540e2aea4cc" hs_bindgen_02d2a540e2aea4cc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_new@
hs_bindgen_02d2a540e2aea4cc :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_lock_flags)))
hs_bindgen_02d2a540e2aea4cc =
  RIP.fromFFIType hs_bindgen_02d2a540e2aea4cc_base

{-# NOINLINE nix_flake_lock_flags_new #-}
{-| __C declaration:__ @nix_flake_lock_flags_new@

    __defined at:__ @nix_api_flake.h 120:24@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> IO (RIP.Ptr Nix_flake_lock_flags))
nix_flake_lock_flags_new =
  RIP.unsafePerformIO hs_bindgen_02d2a540e2aea4cc

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free@
foreign import ccall unsafe "hs_bindgen_415213750508ebf8" hs_bindgen_415213750508ebf8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_free@
hs_bindgen_415213750508ebf8 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_lock_flags) -> IO ()))
hs_bindgen_415213750508ebf8 =
  RIP.fromFFIType hs_bindgen_415213750508ebf8_base

{-# NOINLINE nix_flake_lock_flags_free #-}
{-| __C declaration:__ @nix_flake_lock_flags_free@

    __defined at:__ @nix_api_flake.h 127:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_lock_flags) -> IO ())
nix_flake_lock_flags_free =
  RIP.unsafePerformIO hs_bindgen_415213750508ebf8

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check@
foreign import ccall unsafe "hs_bindgen_80c8e058c22fc972" hs_bindgen_80c8e058c22fc972_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_check@
hs_bindgen_80c8e058c22fc972 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_80c8e058c22fc972 =
  RIP.fromFFIType hs_bindgen_80c8e058c22fc972_base

{-# NOINLINE nix_flake_lock_flags_set_mode_check #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_check@

    __defined at:__ @nix_api_flake.h 137:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_check :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_check =
  RIP.unsafePerformIO hs_bindgen_80c8e058c22fc972

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual@
foreign import ccall unsafe "hs_bindgen_1a2a6042491ce8da" hs_bindgen_1a2a6042491ce8da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_virtual@
hs_bindgen_1a2a6042491ce8da :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_1a2a6042491ce8da =
  RIP.fromFFIType hs_bindgen_1a2a6042491ce8da_base

{-# NOINLINE nix_flake_lock_flags_set_mode_virtual #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_virtual@

    __defined at:__ @nix_api_flake.h 147:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_virtual :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_virtual =
  RIP.unsafePerformIO hs_bindgen_1a2a6042491ce8da

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed@
foreign import ccall unsafe "hs_bindgen_2f5e6a991ec80e5b" hs_bindgen_2f5e6a991ec80e5b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_set_mode_write_as_needed@
hs_bindgen_2f5e6a991ec80e5b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_2f5e6a991ec80e5b =
  RIP.fromFFIType hs_bindgen_2f5e6a991ec80e5b_base

{-# NOINLINE nix_flake_lock_flags_set_mode_write_as_needed #-}
{-| __C declaration:__ @nix_flake_lock_flags_set_mode_write_as_needed@

    __defined at:__ @nix_api_flake.h 157:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_set_mode_write_as_needed :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_set_mode_write_as_needed =
  RIP.unsafePerformIO hs_bindgen_2f5e6a991ec80e5b

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override@
foreign import ccall unsafe "hs_bindgen_dbdb981c7e0c5642" hs_bindgen_dbdb981c7e0c5642_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock_flags_add_input_override@
hs_bindgen_dbdb981c7e0c5642 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_flake_reference) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_dbdb981c7e0c5642 =
  RIP.fromFFIType hs_bindgen_dbdb981c7e0c5642_base

{-# NOINLINE nix_flake_lock_flags_add_input_override #-}
{-| __C declaration:__ @nix_flake_lock_flags_add_input_override@

    __defined at:__ @nix_api_flake.h 170:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock_flags_add_input_override :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_lock_flags) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_flake_reference) -> IO Generated.Nix.Util.Nix_err)
nix_flake_lock_flags_add_input_override =
  RIP.unsafePerformIO hs_bindgen_dbdb981c7e0c5642

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock@
foreign import ccall unsafe "hs_bindgen_4a7298b2f5561205" hs_bindgen_4a7298b2f5561205_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_lock@
hs_bindgen_4a7298b2f5561205 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_flake_lock_flags) -> (RIP.Ptr Nix_flake_reference) -> IO (RIP.Ptr Nix_locked_flake)))
hs_bindgen_4a7298b2f5561205 =
  RIP.fromFFIType hs_bindgen_4a7298b2f5561205_base

{-# NOINLINE nix_flake_lock #-}
{-| __C declaration:__ @nix_flake_lock@

    __defined at:__ @nix_api_flake.h 180:20@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_lock :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_flake_lock_flags) -> (RIP.Ptr Nix_flake_reference) -> IO (RIP.Ptr Nix_locked_flake))
nix_flake_lock =
  RIP.unsafePerformIO hs_bindgen_4a7298b2f5561205

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free@
foreign import ccall unsafe "hs_bindgen_57563bf3fc62f503" hs_bindgen_57563bf3fc62f503_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_free@
hs_bindgen_57563bf3fc62f503 :: IO (RIP.FunPtr ((RIP.Ptr Nix_locked_flake) -> IO ()))
hs_bindgen_57563bf3fc62f503 =
  RIP.fromFFIType hs_bindgen_57563bf3fc62f503_base

{-# NOINLINE nix_locked_flake_free #-}
{-| __C declaration:__ @nix_locked_flake_free@

    __defined at:__ @nix_api_flake.h 193:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_free :: RIP.FunPtr ((RIP.Ptr Nix_locked_flake) -> IO ())
nix_locked_flake_free =
  RIP.unsafePerformIO hs_bindgen_57563bf3fc62f503

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string@
foreign import ccall unsafe "hs_bindgen_53afc6ec60bc2c5e" hs_bindgen_53afc6ec60bc2c5e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_and_fragment_from_string@
hs_bindgen_53afc6ec60bc2c5e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_flake_reference)) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_53afc6ec60bc2c5e =
  RIP.fromFFIType hs_bindgen_53afc6ec60bc2c5e_base

{-# NOINLINE nix_flake_reference_and_fragment_from_string #-}
{-| __C declaration:__ @nix_flake_reference_and_fragment_from_string@

    __defined at:__ @nix_api_flake.h 212:9@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_and_fragment_from_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Fetchers.Nix_fetchers_settings) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Nix_flake_reference_parse_flags) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_flake_reference)) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_flake_reference_and_fragment_from_string =
  RIP.unsafePerformIO hs_bindgen_53afc6ec60bc2c5e

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free@
foreign import ccall unsafe "hs_bindgen_42b38099f7e1a2e7" hs_bindgen_42b38099f7e1a2e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_flake_reference_free@
hs_bindgen_42b38099f7e1a2e7 :: IO (RIP.FunPtr ((RIP.Ptr Nix_flake_reference) -> IO ()))
hs_bindgen_42b38099f7e1a2e7 =
  RIP.fromFFIType hs_bindgen_42b38099f7e1a2e7_base

{-# NOINLINE nix_flake_reference_free #-}
{-| __C declaration:__ @nix_flake_reference_free@

    __defined at:__ @nix_api_flake.h 230:6@

    __exported by:__ @nix_api_flake.h@
-}
nix_flake_reference_free :: RIP.FunPtr ((RIP.Ptr Nix_flake_reference) -> IO ())
nix_flake_reference_free =
  RIP.unsafePerformIO hs_bindgen_42b38099f7e1a2e7

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs@
foreign import ccall unsafe "hs_bindgen_1de19c31cc8387c2" hs_bindgen_1de19c31cc8387c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixflake_Generated.Nix.Flake_get_nix_locked_flake_get_output_attrs@
hs_bindgen_1de19c31cc8387c2 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_locked_flake) -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value)))
hs_bindgen_1de19c31cc8387c2 =
  RIP.fromFFIType hs_bindgen_1de19c31cc8387c2_base

{-# NOINLINE nix_locked_flake_get_output_attrs #-}
{-| __C declaration:__ @nix_locked_flake_get_output_attrs@

    __defined at:__ @nix_api_flake.h 239:13@

    __exported by:__ @nix_api_flake.h@
-}
nix_locked_flake_get_output_attrs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_flake_settings) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> (RIP.Ptr Nix_locked_flake) -> IO (RIP.Ptr Generated.Nix.Expr.Nix_value))
nix_locked_flake_get_output_attrs =
  RIP.unsafePerformIO hs_bindgen_1de19c31cc8387c2
