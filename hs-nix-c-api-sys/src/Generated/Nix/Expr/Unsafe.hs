{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Expr.Unsafe
    ( Generated.Nix.Expr.Unsafe.nix_libexpr_init
    , Generated.Nix.Expr.Unsafe.nix_expr_eval_from_string
    , Generated.Nix.Expr.Unsafe.nix_value_call
    , Generated.Nix.Expr.Unsafe.nix_value_call_multi
    , Generated.Nix.Expr.Unsafe.nix_value_force
    , Generated.Nix.Expr.Unsafe.nix_value_force_deep
    , Generated.Nix.Expr.Unsafe.nix_eval_state_builder_new
    , Generated.Nix.Expr.Unsafe.nix_eval_state_builder_load
    , Generated.Nix.Expr.Unsafe.nix_eval_state_builder_set_lookup_path
    , Generated.Nix.Expr.Unsafe.nix_eval_state_build
    , Generated.Nix.Expr.Unsafe.nix_eval_state_builder_free
    , Generated.Nix.Expr.Unsafe.nix_state_create
    , Generated.Nix.Expr.Unsafe.nix_state_free
    , Generated.Nix.Expr.Unsafe.nix_gc_incref
    , Generated.Nix.Expr.Unsafe.nix_gc_decref
    , Generated.Nix.Expr.Unsafe.nix_gc_now
    , Generated.Nix.Expr.Unsafe.nix_gc_register_finalizer
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
  , "nix_err hs_bindgen_629cea088dc98d84 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libexpr_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_37f40974620a28ef ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_expr_eval_from_string)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_83adbca2bcb59786 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_value_call)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_8b67b8ec264b04b1 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  size_t arg4,"
  , "  nix_value **arg5,"
  , "  nix_value *arg6"
  , ")"
  , "{"
  , "  return (nix_value_call_multi)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "nix_err hs_bindgen_f11d719472df32d0 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_da518013c1b5c9da ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force_deep)(arg1, arg2, arg3);"
  , "}"
  , "nix_eval_state_builder *hs_bindgen_2aa3ffccc5092999 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_new)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_3a0a8c5442184efa ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_load)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_b5178dce3f253d8a ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_set_lookup_path)(arg1, arg2, arg3);"
  , "}"
  , "EvalState *hs_bindgen_01a13a0d1d7bb532 ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_build)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b95c645639dc98c3 ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  (nix_eval_state_builder_free)(arg1);"
  , "}"
  , "EvalState *hs_bindgen_6d51d642f8f4da44 ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return (nix_state_create)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b47ec243b0e8918d ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  (nix_state_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_d16d9450f4d76fc4 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_549754afcc94c2d9 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_decref)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c35010878c669243 (void)"
  , "{"
  , "  (nix_gc_now)();"
  , "}"
  , "void hs_bindgen_8af5cc1c700774a1 ("
  , "  void *arg1,"
  , "  void *arg2,"
  , "  void (*arg3) ("
  , "  void *arg1,"
  , "  void *arg2"
  , ")"
  , ")"
  , "{"
  , "  (nix_gc_register_finalizer)(arg1, arg2, arg3);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_libexpr_init@
foreign import ccall unsafe "hs_bindgen_629cea088dc98d84" hs_bindgen_629cea088dc98d84_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_libexpr_init@
hs_bindgen_629cea088dc98d84 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_629cea088dc98d84 =
  RIP.fromFFIType hs_bindgen_629cea088dc98d84_base

{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libexpr_init = hs_bindgen_629cea088dc98d84

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_expr_eval_from_string@
foreign import ccall unsafe "hs_bindgen_37f40974620a28ef" hs_bindgen_37f40974620a28ef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_expr_eval_from_string@
hs_bindgen_37f40974620a28ef ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_37f40974620a28ef =
  RIP.fromFFIType hs_bindgen_37f40974620a28ef_base

{-| __C declaration:__ @nix_expr_eval_from_string@

    __defined at:__ @nix_api_expr.h 100:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_expr_eval_from_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @expr@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @path@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_expr_eval_from_string =
  hs_bindgen_37f40974620a28ef

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call@
foreign import ccall unsafe "hs_bindgen_83adbca2bcb59786" hs_bindgen_83adbca2bcb59786_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call@
hs_bindgen_83adbca2bcb59786 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_83adbca2bcb59786 =
  RIP.fromFFIType hs_bindgen_83adbca2bcb59786_base

{-| __C declaration:__ @nix_value_call@

    __defined at:__ @nix_api_expr.h 116:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @fn@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @arg@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_call = hs_bindgen_83adbca2bcb59786

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call_multi@
foreign import ccall unsafe "hs_bindgen_8b67b8ec264b04b1" hs_bindgen_8b67b8ec264b04b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call_multi@
hs_bindgen_8b67b8ec264b04b1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.CSize
  -> RIP.Ptr (RIP.Ptr Nix_value)
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8b67b8ec264b04b1 =
  RIP.fromFFIType hs_bindgen_8b67b8ec264b04b1_base

{-| __C declaration:__ @nix_value_call_multi@

    __defined at:__ @nix_api_expr.h 135:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_call_multi ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @fn@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @nargs@
  -> RIP.Ptr (RIP.Ptr Nix_value)
     -- ^ __C declaration:__ @args@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_call_multi = hs_bindgen_8b67b8ec264b04b1

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force@
foreign import ccall unsafe "hs_bindgen_f11d719472df32d0" hs_bindgen_f11d719472df32d0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force@
hs_bindgen_f11d719472df32d0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f11d719472df32d0 =
  RIP.fromFFIType hs_bindgen_f11d719472df32d0_base

{-| __C declaration:__ @nix_value_force@

    __defined at:__ @nix_api_expr.h 177:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_force = hs_bindgen_f11d719472df32d0

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force_deep@
foreign import ccall unsafe "hs_bindgen_da518013c1b5c9da" hs_bindgen_da518013c1b5c9da_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force_deep@
hs_bindgen_da518013c1b5c9da ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_da518013c1b5c9da =
  RIP.fromFFIType hs_bindgen_da518013c1b5c9da_base

{-| __C declaration:__ @nix_value_force_deep@

    __defined at:__ @nix_api_expr.h 193:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_value_force_deep ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_force_deep = hs_bindgen_da518013c1b5c9da

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_new@
foreign import ccall unsafe "hs_bindgen_2aa3ffccc5092999" hs_bindgen_2aa3ffccc5092999_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_new@
hs_bindgen_2aa3ffccc5092999 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr Nix_eval_state_builder)
hs_bindgen_2aa3ffccc5092999 =
  RIP.fromFFIType hs_bindgen_2aa3ffccc5092999_base

{-| __C declaration:__ @nix_eval_state_builder_new@

    __defined at:__ @nix_api_expr.h 206:26@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
     -- ^ __C declaration:__ @store@
  -> IO (RIP.Ptr Nix_eval_state_builder)
nix_eval_state_builder_new =
  hs_bindgen_2aa3ffccc5092999

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_load@
foreign import ccall unsafe "hs_bindgen_3a0a8c5442184efa" hs_bindgen_3a0a8c5442184efa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_load@
hs_bindgen_3a0a8c5442184efa ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_3a0a8c5442184efa =
  RIP.fromFFIType hs_bindgen_3a0a8c5442184efa_base

{-| __C declaration:__ @nix_eval_state_builder_load@

    __defined at:__ @nix_api_expr.h 219:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_load ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO Generated.Nix.Util.Nix_err
nix_eval_state_builder_load =
  hs_bindgen_3a0a8c5442184efa

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_set_lookup_path@
foreign import ccall unsafe "hs_bindgen_b5178dce3f253d8a" hs_bindgen_b5178dce3f253d8a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_set_lookup_path@
hs_bindgen_b5178dce3f253d8a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b5178dce3f253d8a =
  RIP.fromFFIType hs_bindgen_b5178dce3f253d8a_base

{-| __C declaration:__ @nix_eval_state_builder_set_lookup_path@

    __defined at:__ @nix_api_expr.h 229:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_set_lookup_path ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @lookupPath@
  -> IO Generated.Nix.Util.Nix_err
nix_eval_state_builder_set_lookup_path =
  hs_bindgen_b5178dce3f253d8a

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_build@
foreign import ccall unsafe "hs_bindgen_01a13a0d1d7bb532" hs_bindgen_01a13a0d1d7bb532_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_build@
hs_bindgen_01a13a0d1d7bb532 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO (RIP.Ptr EvalState)
hs_bindgen_01a13a0d1d7bb532 =
  RIP.fromFFIType hs_bindgen_01a13a0d1d7bb532_base

{-| __C declaration:__ @nix_eval_state_build@

    __defined at:__ @nix_api_expr.h 244:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_build ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO (RIP.Ptr EvalState)
nix_eval_state_build = hs_bindgen_01a13a0d1d7bb532

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_free@
foreign import ccall unsafe "hs_bindgen_b95c645639dc98c3" hs_bindgen_b95c645639dc98c3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_free@
hs_bindgen_b95c645639dc98c3 ::
     RIP.Ptr Nix_eval_state_builder
  -> IO ()
hs_bindgen_b95c645639dc98c3 =
  RIP.fromFFIType hs_bindgen_b95c645639dc98c3_base

{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free ::
     RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_eval_state_builder_free =
  hs_bindgen_b95c645639dc98c3

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_create@
foreign import ccall unsafe "hs_bindgen_6d51d642f8f4da44" hs_bindgen_6d51d642f8f4da44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_create@
hs_bindgen_6d51d642f8f4da44 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr EvalState)
hs_bindgen_6d51d642f8f4da44 =
  RIP.fromFFIType hs_bindgen_6d51d642f8f4da44_base

{-| __C declaration:__ @nix_state_create@

    __defined at:__ @nix_api_expr.h 268:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_create ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @lookupPath@
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
     -- ^ __C declaration:__ @store@
  -> IO (RIP.Ptr EvalState)
nix_state_create = hs_bindgen_6d51d642f8f4da44

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_free@
foreign import ccall unsafe "hs_bindgen_b47ec243b0e8918d" hs_bindgen_b47ec243b0e8918d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_free@
hs_bindgen_b47ec243b0e8918d ::
     RIP.Ptr EvalState
  -> IO ()
hs_bindgen_b47ec243b0e8918d =
  RIP.fromFFIType hs_bindgen_b47ec243b0e8918d_base

{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free ::
     RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> IO ()
nix_state_free = hs_bindgen_b47ec243b0e8918d

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_incref@
foreign import ccall unsafe "hs_bindgen_d16d9450f4d76fc4" hs_bindgen_d16d9450f4d76fc4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_incref@
hs_bindgen_d16d9450f4d76fc4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d16d9450f4d76fc4 =
  RIP.fromFFIType hs_bindgen_d16d9450f4d76fc4_base

{-| __C declaration:__ @nix_gc_incref@

    __defined at:__ @nix_api_expr.h 308:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_incref ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.Void
     -- ^ __C declaration:__ @object@
  -> IO Generated.Nix.Util.Nix_err
nix_gc_incref = hs_bindgen_d16d9450f4d76fc4

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_decref@
foreign import ccall unsafe "hs_bindgen_549754afcc94c2d9" hs_bindgen_549754afcc94c2d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_decref@
hs_bindgen_549754afcc94c2d9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_549754afcc94c2d9 =
  RIP.fromFFIType hs_bindgen_549754afcc94c2d9_base

{-| __C declaration:__ @nix_gc_decref@

    __defined at:__ @nix_api_expr.h 323:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_decref ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.Void
     -- ^ __C declaration:__ @object@
  -> IO Generated.Nix.Util.Nix_err
nix_gc_decref = hs_bindgen_549754afcc94c2d9

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_now@
foreign import ccall unsafe "hs_bindgen_c35010878c669243" hs_bindgen_c35010878c669243_base ::
     IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_now@
hs_bindgen_c35010878c669243 :: IO ()
hs_bindgen_c35010878c669243 =
  RIP.fromFFIType hs_bindgen_c35010878c669243_base

{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: IO ()
nix_gc_now = hs_bindgen_c35010878c669243

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_register_finalizer@
foreign import ccall unsafe "hs_bindgen_8af5cc1c700774a1" hs_bindgen_8af5cc1c700774a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_register_finalizer@
hs_bindgen_8af5cc1c700774a1 ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO ()
hs_bindgen_8af5cc1c700774a1 =
  RIP.fromFFIType hs_bindgen_8af5cc1c700774a1_base

{-| __C declaration:__ @nix_gc_register_finalizer@

    __defined at:__ @nix_api_expr.h 341:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_register_finalizer ::
     RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @obj@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @cd@
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
     -- ^ __C declaration:__ @finalizer@
  -> IO ()
nix_gc_register_finalizer =
  hs_bindgen_8af5cc1c700774a1
