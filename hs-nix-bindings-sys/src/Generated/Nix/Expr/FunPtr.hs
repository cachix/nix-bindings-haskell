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
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_248eb41383f81425 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_libexpr_init;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_4d3f60c41db51c49 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return &nix_expr_eval_from_string;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_b4af5eb4acccae2f (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return &nix_value_call;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9d0017faf0660c1b (void)) ("
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
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_5e4869283fb3ae6f (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_value_force;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_b030e13e21ac11e3 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_value_force_deep;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new */"
  , "__attribute__ ((const))"
  , "nix_eval_state_builder *(*hs_bindgen_6c86602f016ad59f (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_new;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_55621c7f61959079 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_load;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8cfd6e0307bf4674 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_set_lookup_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build */"
  , "__attribute__ ((const))"
  , "EvalState *(*hs_bindgen_c710f1166883de6d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return &nix_eval_state_build;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e8fe74c65729a27a (void)) ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  return &nix_eval_state_builder_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_create */"
  , "__attribute__ ((const))"
  , "EvalState *(*hs_bindgen_622da5cba48e2c43 (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return &nix_state_create;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_538a86ad8a83f39a (void)) ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  return &nix_state_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_adf4a04c4677c0cd (void)) ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return &nix_gc_incref;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9ac9219d25881ed6 (void)) ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return &nix_gc_decref;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_516d2d8d6e9e3ac5 (void)) (void)"
  , "{"
  , "  return &nix_gc_now;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f9c5f8d78fd10745 (void)) ("
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

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init@
foreign import ccall unsafe "hs_bindgen_248eb41383f81425" hs_bindgen_248eb41383f81425_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_libexpr_init@
hs_bindgen_248eb41383f81425 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_248eb41383f81425 =
  RIP.fromFFIType hs_bindgen_248eb41383f81425_base

{-# NOINLINE nix_libexpr_init #-}
{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_libexpr_init =
  RIP.unsafePerformIO hs_bindgen_248eb41383f81425

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string@
foreign import ccall unsafe "hs_bindgen_4d3f60c41db51c49" hs_bindgen_4d3f60c41db51c49_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_expr_eval_from_string@
hs_bindgen_4d3f60c41db51c49 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_4d3f60c41db51c49 =
  RIP.fromFFIType hs_bindgen_4d3f60c41db51c49_base

{-# NOINLINE nix_expr_eval_from_string #-}
{-| __C declaration:__ @nix_expr_eval_from_string@

    __defined at:__ @nix_api_expr.h 100:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_expr_eval_from_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_expr_eval_from_string =
  RIP.unsafePerformIO hs_bindgen_4d3f60c41db51c49

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call@
foreign import ccall unsafe "hs_bindgen_b4af5eb4acccae2f" hs_bindgen_b4af5eb4acccae2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call@
hs_bindgen_b4af5eb4acccae2f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_b4af5eb4acccae2f =
  RIP.fromFFIType hs_bindgen_b4af5eb4acccae2f_base

{-# NOINLINE nix_value_call #-}
{-| __C declaration:__ @nix_value_call@

    __defined at:__ @nix_api_expr.h 116:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_call =
  RIP.unsafePerformIO hs_bindgen_b4af5eb4acccae2f

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi@
foreign import ccall unsafe "hs_bindgen_9d0017faf0660c1b" hs_bindgen_9d0017faf0660c1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_call_multi@
hs_bindgen_9d0017faf0660c1b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9d0017faf0660c1b =
  RIP.fromFFIType hs_bindgen_9d0017faf0660c1b_base

{-# NOINLINE nix_value_call_multi #-}
{-| __C declaration:__ @nix_value_call_multi@

    __defined at:__ @nix_api_expr.h 135:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call_multi :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.CSize -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_call_multi =
  RIP.unsafePerformIO hs_bindgen_9d0017faf0660c1b

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force@
foreign import ccall unsafe "hs_bindgen_5e4869283fb3ae6f" hs_bindgen_5e4869283fb3ae6f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force@
hs_bindgen_5e4869283fb3ae6f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_5e4869283fb3ae6f =
  RIP.fromFFIType hs_bindgen_5e4869283fb3ae6f_base

{-# NOINLINE nix_value_force #-}
{-| __C declaration:__ @nix_value_force@

    __defined at:__ @nix_api_expr.h 177:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_force =
  RIP.unsafePerformIO hs_bindgen_5e4869283fb3ae6f

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep@
foreign import ccall unsafe "hs_bindgen_b030e13e21ac11e3" hs_bindgen_b030e13e21ac11e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_value_force_deep@
hs_bindgen_b030e13e21ac11e3 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_b030e13e21ac11e3 =
  RIP.fromFFIType hs_bindgen_b030e13e21ac11e3_base

{-# NOINLINE nix_value_force_deep #-}
{-| __C declaration:__ @nix_value_force_deep@

    __defined at:__ @nix_api_expr.h 193:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force_deep :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_force_deep =
  RIP.unsafePerformIO hs_bindgen_b030e13e21ac11e3

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new@
foreign import ccall unsafe "hs_bindgen_6c86602f016ad59f" hs_bindgen_6c86602f016ad59f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_new@
hs_bindgen_6c86602f016ad59f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr Nix_eval_state_builder)))
hs_bindgen_6c86602f016ad59f =
  RIP.fromFFIType hs_bindgen_6c86602f016ad59f_base

{-# NOINLINE nix_eval_state_builder_new #-}
{-| __C declaration:__ @nix_eval_state_builder_new@

    __defined at:__ @nix_api_expr.h 206:26@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr Nix_eval_state_builder))
nix_eval_state_builder_new =
  RIP.unsafePerformIO hs_bindgen_6c86602f016ad59f

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load@
foreign import ccall unsafe "hs_bindgen_55621c7f61959079" hs_bindgen_55621c7f61959079_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_load@
hs_bindgen_55621c7f61959079 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_55621c7f61959079 =
  RIP.fromFFIType hs_bindgen_55621c7f61959079_base

{-# NOINLINE nix_eval_state_builder_load #-}
{-| __C declaration:__ @nix_eval_state_builder_load@

    __defined at:__ @nix_api_expr.h 219:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_load :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO Generated.Nix.Util.Nix_err)
nix_eval_state_builder_load =
  RIP.unsafePerformIO hs_bindgen_55621c7f61959079

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path@
foreign import ccall unsafe "hs_bindgen_8cfd6e0307bf4674" hs_bindgen_8cfd6e0307bf4674_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_set_lookup_path@
hs_bindgen_8cfd6e0307bf4674 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_8cfd6e0307bf4674 =
  RIP.fromFFIType hs_bindgen_8cfd6e0307bf4674_base

{-# NOINLINE nix_eval_state_builder_set_lookup_path #-}
{-| __C declaration:__ @nix_eval_state_builder_set_lookup_path@

    __defined at:__ @nix_api_expr.h 229:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_set_lookup_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO Generated.Nix.Util.Nix_err)
nix_eval_state_builder_set_lookup_path =
  RIP.unsafePerformIO hs_bindgen_8cfd6e0307bf4674

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build@
foreign import ccall unsafe "hs_bindgen_c710f1166883de6d" hs_bindgen_c710f1166883de6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_build@
hs_bindgen_c710f1166883de6d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO (RIP.Ptr EvalState)))
hs_bindgen_c710f1166883de6d =
  RIP.fromFFIType hs_bindgen_c710f1166883de6d_base

{-# NOINLINE nix_eval_state_build #-}
{-| __C declaration:__ @nix_eval_state_build@

    __defined at:__ @nix_api_expr.h 244:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_build :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_eval_state_builder) -> IO (RIP.Ptr EvalState))
nix_eval_state_build =
  RIP.unsafePerformIO hs_bindgen_c710f1166883de6d

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free@
foreign import ccall unsafe "hs_bindgen_e8fe74c65729a27a" hs_bindgen_e8fe74c65729a27a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_eval_state_builder_free@
hs_bindgen_e8fe74c65729a27a :: IO (RIP.FunPtr ((RIP.Ptr Nix_eval_state_builder) -> IO ()))
hs_bindgen_e8fe74c65729a27a =
  RIP.fromFFIType hs_bindgen_e8fe74c65729a27a_base

{-# NOINLINE nix_eval_state_builder_free #-}
{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free :: RIP.FunPtr ((RIP.Ptr Nix_eval_state_builder) -> IO ())
nix_eval_state_builder_free =
  RIP.unsafePerformIO hs_bindgen_e8fe74c65729a27a

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_create@
foreign import ccall unsafe "hs_bindgen_622da5cba48e2c43" hs_bindgen_622da5cba48e2c43_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_create@
hs_bindgen_622da5cba48e2c43 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr EvalState)))
hs_bindgen_622da5cba48e2c43 =
  RIP.fromFFIType hs_bindgen_622da5cba48e2c43_base

{-# NOINLINE nix_state_create #-}
{-| __C declaration:__ @nix_state_create@

    __defined at:__ @nix_api_expr.h 268:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_create :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (RIP.Ptr Generated.Nix.Store.PathInfo.Store) -> IO (RIP.Ptr EvalState))
nix_state_create =
  RIP.unsafePerformIO hs_bindgen_622da5cba48e2c43

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_free@
foreign import ccall unsafe "hs_bindgen_538a86ad8a83f39a" hs_bindgen_538a86ad8a83f39a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_state_free@
hs_bindgen_538a86ad8a83f39a :: IO (RIP.FunPtr ((RIP.Ptr EvalState) -> IO ()))
hs_bindgen_538a86ad8a83f39a =
  RIP.fromFFIType hs_bindgen_538a86ad8a83f39a_base

{-# NOINLINE nix_state_free #-}
{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free :: RIP.FunPtr ((RIP.Ptr EvalState) -> IO ())
nix_state_free =
  RIP.unsafePerformIO hs_bindgen_538a86ad8a83f39a

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref@
foreign import ccall unsafe "hs_bindgen_adf4a04c4677c0cd" hs_bindgen_adf4a04c4677c0cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_incref@
hs_bindgen_adf4a04c4677c0cd :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_adf4a04c4677c0cd =
  RIP.fromFFIType hs_bindgen_adf4a04c4677c0cd_base

{-# NOINLINE nix_gc_incref #-}
{-| __C declaration:__ @nix_gc_incref@

    __defined at:__ @nix_api_expr.h 308:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_incref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_gc_incref =
  RIP.unsafePerformIO hs_bindgen_adf4a04c4677c0cd

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref@
foreign import ccall unsafe "hs_bindgen_9ac9219d25881ed6" hs_bindgen_9ac9219d25881ed6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_decref@
hs_bindgen_9ac9219d25881ed6 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9ac9219d25881ed6 =
  RIP.fromFFIType hs_bindgen_9ac9219d25881ed6_base

{-# NOINLINE nix_gc_decref #-}
{-| __C declaration:__ @nix_gc_decref@

    __defined at:__ @nix_api_expr.h 323:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_decref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_gc_decref =
  RIP.unsafePerformIO hs_bindgen_9ac9219d25881ed6

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now@
foreign import ccall unsafe "hs_bindgen_516d2d8d6e9e3ac5" hs_bindgen_516d2d8d6e9e3ac5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_now@
hs_bindgen_516d2d8d6e9e3ac5 :: IO (RIP.FunPtr (IO ()))
hs_bindgen_516d2d8d6e9e3ac5 =
  RIP.fromFFIType hs_bindgen_516d2d8d6e9e3ac5_base

{-# NOINLINE nix_gc_now #-}
{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: RIP.FunPtr (IO ())
nix_gc_now =
  RIP.unsafePerformIO hs_bindgen_516d2d8d6e9e3ac5

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer@
foreign import ccall unsafe "hs_bindgen_f9c5f8d78fd10745" hs_bindgen_f9c5f8d78fd10745_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_get_nix_gc_register_finalizer@
hs_bindgen_f9c5f8d78fd10745 :: IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())) -> IO ()))
hs_bindgen_f9c5f8d78fd10745 =
  RIP.fromFFIType hs_bindgen_f9c5f8d78fd10745_base

{-# NOINLINE nix_gc_register_finalizer #-}
{-| __C declaration:__ @nix_gc_register_finalizer@

    __defined at:__ @nix_api_expr.h 341:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_register_finalizer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())) -> IO ())
nix_gc_register_finalizer =
  RIP.unsafePerformIO hs_bindgen_f9c5f8d78fd10745
