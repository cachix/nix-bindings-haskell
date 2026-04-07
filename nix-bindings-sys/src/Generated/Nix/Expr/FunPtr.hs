{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Expr.FunPtr
    ( Generated.Nix.Expr.FunPtr.nix_libexpr_init
    , Generated.Nix.Expr.FunPtr.nix_expr_eval_from_string
    , Generated.Nix.Expr.FunPtr.nix_value_call
    , Generated.Nix.Expr.FunPtr.nix_value_call_multi
    , Generated.Nix.Expr.FunPtr.nix_value_force
    , Generated.Nix.Expr.FunPtr.nix_value_force_deep
    , Generated.Nix.Expr.FunPtr.nix_eval_state_builder_new
    , Generated.Nix.Expr.FunPtr.nix_eval_state_builder_load
    , Generated.Nix.Expr.FunPtr.nix_eval_state_builder_set_lookup_path
    , Generated.Nix.Expr.FunPtr.nix_eval_state_build
    , Generated.Nix.Expr.FunPtr.nix_eval_state_builder_free
    , Generated.Nix.Expr.FunPtr.nix_state_create
    , Generated.Nix.Expr.FunPtr.nix_state_free
    , Generated.Nix.Expr.FunPtr.nix_gc_incref
    , Generated.Nix.Expr.FunPtr.nix_gc_decref
    , Generated.Nix.Expr.FunPtr.nix_gc_now
    , Generated.Nix.Expr.FunPtr.nix_gc_register_finalizer
    )
  where

import qualified Generated.Nix.Store.PathInfo
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Expr

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_expr.h>"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_868109e2f2fe6fe5 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libexpr_init;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6589c335a65ae6f1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return &nix_expr_eval_from_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_c7ec48ac4a87b8ad (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return &nix_value_call;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_ab6428440612aa1e (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  size_t arg4,"
  , "  nix_value **arg5,"
  , "  nix_value *arg6"
  , ")"
  , "{"
  , "  return &nix_value_call_multi;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_b0c2326d2d109ead (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_value_force;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_51ba363e2b2bde2e (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_value_force_deep;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new */"
  , "__attribute__ ((const))"
  , "nix_eval_state_builder *(*hs_bindgen_f75a25ecd88954d7 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_new;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_e4527b89ed2d0c21 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_load;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3f6438cd285ea253 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_set_lookup_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build */"
  , "__attribute__ ((const))"
  , "EvalState *(*hs_bindgen_e788bef1356de10e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_build;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c6151cf7c98270ea (void)) ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_create */"
  , "__attribute__ ((const))"
  , "EvalState *(*hs_bindgen_01c0874745ca8343 (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return &nix_state_create;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ca6c12a421b5652c (void)) ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  return &nix_state_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6420c22722fcaec8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return &nix_gc_incref;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_f81b420f32305f79 (void)) ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return &nix_gc_decref;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4c3c12fb351b547c (void)) (void)"
  , "{"
  , "  return &nix_gc_now;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e889c6e3f1d0b1e (void)) ("
  , "  void *arg1,"
  , "  void *arg2,"
  , "  void (*arg3) ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , ")"
  , "{"
  , "  return &nix_gc_register_finalizer;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init@
foreign import ccall unsafe "hs_bindgen_868109e2f2fe6fe5" hs_bindgen_868109e2f2fe6fe5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init@
hs_bindgen_868109e2f2fe6fe5 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_868109e2f2fe6fe5 =
  RIP.fromFFIType hs_bindgen_868109e2f2fe6fe5_base

{-# NOINLINE nix_libexpr_init #-}
{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libexpr_init =
  RIP.unsafePerformIO hs_bindgen_868109e2f2fe6fe5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string@
foreign import ccall unsafe "hs_bindgen_6589c335a65ae6f1" hs_bindgen_6589c335a65ae6f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string@
hs_bindgen_6589c335a65ae6f1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6589c335a65ae6f1 =
  RIP.fromFFIType hs_bindgen_6589c335a65ae6f1_base

{-# NOINLINE nix_expr_eval_from_string #-}
{-| __C declaration:__ @nix_expr_eval_from_string@

    __defined at:__ @nix_api_expr.h 100:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_expr_eval_from_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_expr_eval_from_string =
  RIP.unsafePerformIO hs_bindgen_6589c335a65ae6f1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call@
foreign import ccall unsafe "hs_bindgen_c7ec48ac4a87b8ad" hs_bindgen_c7ec48ac4a87b8ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call@
hs_bindgen_c7ec48ac4a87b8ad :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_c7ec48ac4a87b8ad =
  RIP.fromFFIType hs_bindgen_c7ec48ac4a87b8ad_base

{-# NOINLINE nix_value_call #-}
{-| __C declaration:__ @nix_value_call@

    __defined at:__ @nix_api_expr.h 116:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_call =
  RIP.unsafePerformIO hs_bindgen_c7ec48ac4a87b8ad

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi@
foreign import ccall unsafe "hs_bindgen_ab6428440612aa1e" hs_bindgen_ab6428440612aa1e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi@
hs_bindgen_ab6428440612aa1e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_ab6428440612aa1e =
  RIP.fromFFIType hs_bindgen_ab6428440612aa1e_base

{-# NOINLINE nix_value_call_multi #-}
{-| __C declaration:__ @nix_value_call_multi@

    __defined at:__ @nix_api_expr.h 135:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call_multi :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_call_multi =
  RIP.unsafePerformIO hs_bindgen_ab6428440612aa1e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force@
foreign import ccall unsafe "hs_bindgen_b0c2326d2d109ead" hs_bindgen_b0c2326d2d109ead_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force@
hs_bindgen_b0c2326d2d109ead :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_b0c2326d2d109ead =
  RIP.fromFFIType hs_bindgen_b0c2326d2d109ead_base

{-# NOINLINE nix_value_force #-}
{-| __C declaration:__ @nix_value_force@

    __defined at:__ @nix_api_expr.h 177:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_force =
  RIP.unsafePerformIO hs_bindgen_b0c2326d2d109ead

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep@
foreign import ccall unsafe "hs_bindgen_51ba363e2b2bde2e" hs_bindgen_51ba363e2b2bde2e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep@
hs_bindgen_51ba363e2b2bde2e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_51ba363e2b2bde2e =
  RIP.fromFFIType hs_bindgen_51ba363e2b2bde2e_base

{-# NOINLINE nix_value_force_deep #-}
{-| __C declaration:__ @nix_value_force_deep@

    __defined at:__ @nix_api_expr.h 193:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force_deep :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_force_deep =
  RIP.unsafePerformIO hs_bindgen_51ba363e2b2bde2e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new@
foreign import ccall unsafe "hs_bindgen_f75a25ecd88954d7" hs_bindgen_f75a25ecd88954d7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new@
hs_bindgen_f75a25ecd88954d7 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr Nix_eval_state_builder)))
hs_bindgen_f75a25ecd88954d7 =
  RIP.fromFFIType hs_bindgen_f75a25ecd88954d7_base

{-# NOINLINE nix_eval_state_builder_new #-}
{-| __C declaration:__ @nix_eval_state_builder_new@

    __defined at:__ @nix_api_expr.h 206:26@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr Nix_eval_state_builder))
nix_eval_state_builder_new =
  RIP.unsafePerformIO hs_bindgen_f75a25ecd88954d7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load@
foreign import ccall unsafe "hs_bindgen_e4527b89ed2d0c21" hs_bindgen_e4527b89ed2d0c21_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load@
hs_bindgen_e4527b89ed2d0c21 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_e4527b89ed2d0c21 =
  RIP.fromFFIType hs_bindgen_e4527b89ed2d0c21_base

{-# NOINLINE nix_eval_state_builder_load #-}
{-| __C declaration:__ @nix_eval_state_builder_load@

    __defined at:__ @nix_api_expr.h 219:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_load :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err)
nix_eval_state_builder_load =
  RIP.unsafePerformIO hs_bindgen_e4527b89ed2d0c21

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path@
foreign import ccall unsafe "hs_bindgen_3f6438cd285ea253" hs_bindgen_3f6438cd285ea253_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path@
hs_bindgen_3f6438cd285ea253 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3f6438cd285ea253 =
  RIP.fromFFIType hs_bindgen_3f6438cd285ea253_base

{-# NOINLINE nix_eval_state_builder_set_lookup_path #-}
{-| __C declaration:__ @nix_eval_state_builder_set_lookup_path@

    __defined at:__ @nix_api_expr.h 229:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_set_lookup_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO Generated.Nix.Util.Nix_err)
nix_eval_state_builder_set_lookup_path =
  RIP.unsafePerformIO hs_bindgen_3f6438cd285ea253

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build@
foreign import ccall unsafe "hs_bindgen_e788bef1356de10e" hs_bindgen_e788bef1356de10e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build@
hs_bindgen_e788bef1356de10e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO (RIP.Ptr EvalState)))
hs_bindgen_e788bef1356de10e =
  RIP.fromFFIType hs_bindgen_e788bef1356de10e_base

{-# NOINLINE nix_eval_state_build #-}
{-| __C declaration:__ @nix_eval_state_build@

    __defined at:__ @nix_api_expr.h 244:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_build :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO (RIP.Ptr EvalState))
nix_eval_state_build =
  RIP.unsafePerformIO hs_bindgen_e788bef1356de10e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free@
foreign import ccall unsafe "hs_bindgen_c6151cf7c98270ea" hs_bindgen_c6151cf7c98270ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free@
hs_bindgen_c6151cf7c98270ea :: IO (RIP.FunPtr ((RIP.Ptr Nix_eval_state_builder) -> IO ()))
hs_bindgen_c6151cf7c98270ea =
  RIP.fromFFIType hs_bindgen_c6151cf7c98270ea_base

{-# NOINLINE nix_eval_state_builder_free #-}
{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free :: RIP.FunPtr ((RIP.Ptr Nix_eval_state_builder) -> IO ())
nix_eval_state_builder_free =
  RIP.unsafePerformIO hs_bindgen_c6151cf7c98270ea

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_create@
foreign import ccall unsafe "hs_bindgen_01c0874745ca8343" hs_bindgen_01c0874745ca8343_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_create@
hs_bindgen_01c0874745ca8343 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr EvalState)))
hs_bindgen_01c0874745ca8343 =
  RIP.fromFFIType hs_bindgen_01c0874745ca8343_base

{-# NOINLINE nix_state_create #-}
{-| __C declaration:__ @nix_state_create@

    __defined at:__ @nix_api_expr.h 268:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_create :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr EvalState))
nix_state_create =
  RIP.unsafePerformIO hs_bindgen_01c0874745ca8343

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_free@
foreign import ccall unsafe "hs_bindgen_ca6c12a421b5652c" hs_bindgen_ca6c12a421b5652c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_state_free@
hs_bindgen_ca6c12a421b5652c :: IO (RIP.FunPtr ((RIP.Ptr EvalState) -> IO ()))
hs_bindgen_ca6c12a421b5652c =
  RIP.fromFFIType hs_bindgen_ca6c12a421b5652c_base

{-# NOINLINE nix_state_free #-}
{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free :: RIP.FunPtr ((RIP.Ptr EvalState) -> IO ())
nix_state_free =
  RIP.unsafePerformIO hs_bindgen_ca6c12a421b5652c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref@
foreign import ccall unsafe "hs_bindgen_6420c22722fcaec8" hs_bindgen_6420c22722fcaec8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref@
hs_bindgen_6420c22722fcaec8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6420c22722fcaec8 =
  RIP.fromFFIType hs_bindgen_6420c22722fcaec8_base

{-# NOINLINE nix_gc_incref #-}
{-| __C declaration:__ @nix_gc_incref@

    __defined at:__ @nix_api_expr.h 308:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_incref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_gc_incref =
  RIP.unsafePerformIO hs_bindgen_6420c22722fcaec8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref@
foreign import ccall unsafe "hs_bindgen_f81b420f32305f79" hs_bindgen_f81b420f32305f79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref@
hs_bindgen_f81b420f32305f79 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_f81b420f32305f79 =
  RIP.fromFFIType hs_bindgen_f81b420f32305f79_base

{-# NOINLINE nix_gc_decref #-}
{-| __C declaration:__ @nix_gc_decref@

    __defined at:__ @nix_api_expr.h 323:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_decref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_gc_decref =
  RIP.unsafePerformIO hs_bindgen_f81b420f32305f79

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now@
foreign import ccall unsafe "hs_bindgen_4c3c12fb351b547c" hs_bindgen_4c3c12fb351b547c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now@
hs_bindgen_4c3c12fb351b547c :: IO (RIP.FunPtr (IO ()))
hs_bindgen_4c3c12fb351b547c =
  RIP.fromFFIType hs_bindgen_4c3c12fb351b547c_base

{-# NOINLINE nix_gc_now #-}
{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: RIP.FunPtr (IO ())
nix_gc_now =
  RIP.unsafePerformIO hs_bindgen_4c3c12fb351b547c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer@
foreign import ccall unsafe "hs_bindgen_2e889c6e3f1d0b1e" hs_bindgen_2e889c6e3f1d0b1e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer@
hs_bindgen_2e889c6e3f1d0b1e :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())) -> IO ()))
hs_bindgen_2e889c6e3f1d0b1e =
  RIP.fromFFIType hs_bindgen_2e889c6e3f1d0b1e_base

{-# NOINLINE nix_gc_register_finalizer #-}
{-| __C declaration:__ @nix_gc_register_finalizer@

    __defined at:__ @nix_api_expr.h 341:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_register_finalizer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())) -> IO ())
nix_gc_register_finalizer =
  RIP.unsafePerformIO hs_bindgen_2e889c6e3f1d0b1e
