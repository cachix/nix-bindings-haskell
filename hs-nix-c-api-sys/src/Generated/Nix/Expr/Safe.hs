{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Expr.Safe
    ( Generated.Nix.Expr.Safe.nix_libexpr_init
    , Generated.Nix.Expr.Safe.nix_expr_eval_from_string
    , Generated.Nix.Expr.Safe.nix_value_call
    , Generated.Nix.Expr.Safe.nix_value_call_multi
    , Generated.Nix.Expr.Safe.nix_value_force
    , Generated.Nix.Expr.Safe.nix_value_force_deep
    , Generated.Nix.Expr.Safe.nix_eval_state_builder_new
    , Generated.Nix.Expr.Safe.nix_eval_state_builder_load
    , Generated.Nix.Expr.Safe.nix_eval_state_builder_set_lookup_path
    , Generated.Nix.Expr.Safe.nix_eval_state_build
    , Generated.Nix.Expr.Safe.nix_eval_state_builder_free
    , Generated.Nix.Expr.Safe.nix_state_create
    , Generated.Nix.Expr.Safe.nix_state_free
    , Generated.Nix.Expr.Safe.nix_gc_incref
    , Generated.Nix.Expr.Safe.nix_gc_decref
    , Generated.Nix.Expr.Safe.nix_gc_now
    , Generated.Nix.Expr.Safe.nix_gc_register_finalizer
    )
  where

import qualified Generated.Nix.Store
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Expr

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_expr.h>"
  , "nix_err hs_bindgen_ba956f065f2fbf89 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libexpr_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_d3418e7865e0c7fa ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_expr_eval_from_string)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_f1c687bdaabb53f5 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_value_call)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_6bab63e377d6c4a2 ("
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
  , "nix_err hs_bindgen_e0e57d4ba5641c18 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_0ba7b42fe5738107 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force_deep)(arg1, arg2, arg3);"
  , "}"
  , "nix_eval_state_builder *hs_bindgen_2efa7965318a753d ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_new)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_af346937cd6e4db4 ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_load)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_a9b4fbbc30c68928 ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_set_lookup_path)(arg1, arg2, arg3);"
  , "}"
  , "EvalState *hs_bindgen_53f20675fffb3958 ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_build)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2714e47970becbf0 ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  (nix_eval_state_builder_free)(arg1);"
  , "}"
  , "EvalState *hs_bindgen_bffa66ef87705e4e ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return (nix_state_create)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f5caf57308d6bc74 ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  (nix_state_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_c540f217827a2ed4 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_aad27f6399482993 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_decref)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_62d93d6decefdea4 (void)"
  , "{"
  , "  (nix_gc_now)();"
  , "}"
  , "void hs_bindgen_a5d04a7c4475417b ("
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

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_libexpr_init@
foreign import ccall safe "hs_bindgen_ba956f065f2fbf89" hs_bindgen_ba956f065f2fbf89_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_libexpr_init@
hs_bindgen_ba956f065f2fbf89 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ba956f065f2fbf89 =
  RIP.fromFFIType hs_bindgen_ba956f065f2fbf89_base

{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libexpr_init = hs_bindgen_ba956f065f2fbf89

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_expr_eval_from_string@
foreign import ccall safe "hs_bindgen_d3418e7865e0c7fa" hs_bindgen_d3418e7865e0c7fa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_expr_eval_from_string@
hs_bindgen_d3418e7865e0c7fa ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d3418e7865e0c7fa =
  RIP.fromFFIType hs_bindgen_d3418e7865e0c7fa_base

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
  hs_bindgen_d3418e7865e0c7fa

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call@
foreign import ccall safe "hs_bindgen_f1c687bdaabb53f5" hs_bindgen_f1c687bdaabb53f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call@
hs_bindgen_f1c687bdaabb53f5 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f1c687bdaabb53f5 =
  RIP.fromFFIType hs_bindgen_f1c687bdaabb53f5_base

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
nix_value_call = hs_bindgen_f1c687bdaabb53f5

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call_multi@
foreign import ccall safe "hs_bindgen_6bab63e377d6c4a2" hs_bindgen_6bab63e377d6c4a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call_multi@
hs_bindgen_6bab63e377d6c4a2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.CSize
  -> RIP.Ptr (RIP.Ptr Nix_value)
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_6bab63e377d6c4a2 =
  RIP.fromFFIType hs_bindgen_6bab63e377d6c4a2_base

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
nix_value_call_multi = hs_bindgen_6bab63e377d6c4a2

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force@
foreign import ccall safe "hs_bindgen_e0e57d4ba5641c18" hs_bindgen_e0e57d4ba5641c18_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force@
hs_bindgen_e0e57d4ba5641c18 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_e0e57d4ba5641c18 =
  RIP.fromFFIType hs_bindgen_e0e57d4ba5641c18_base

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
nix_value_force = hs_bindgen_e0e57d4ba5641c18

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force_deep@
foreign import ccall safe "hs_bindgen_0ba7b42fe5738107" hs_bindgen_0ba7b42fe5738107_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force_deep@
hs_bindgen_0ba7b42fe5738107 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0ba7b42fe5738107 =
  RIP.fromFFIType hs_bindgen_0ba7b42fe5738107_base

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
nix_value_force_deep = hs_bindgen_0ba7b42fe5738107

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_new@
foreign import ccall safe "hs_bindgen_2efa7965318a753d" hs_bindgen_2efa7965318a753d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_new@
hs_bindgen_2efa7965318a753d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.Store
  -> IO (RIP.Ptr Nix_eval_state_builder)
hs_bindgen_2efa7965318a753d =
  RIP.fromFFIType hs_bindgen_2efa7965318a753d_base

{-| __C declaration:__ @nix_eval_state_builder_new@

    __defined at:__ @nix_api_expr.h 206:26@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Store.Store
     -- ^ __C declaration:__ @store@
  -> IO (RIP.Ptr Nix_eval_state_builder)
nix_eval_state_builder_new =
  hs_bindgen_2efa7965318a753d

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_load@
foreign import ccall safe "hs_bindgen_af346937cd6e4db4" hs_bindgen_af346937cd6e4db4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_load@
hs_bindgen_af346937cd6e4db4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_af346937cd6e4db4 =
  RIP.fromFFIType hs_bindgen_af346937cd6e4db4_base

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
  hs_bindgen_af346937cd6e4db4

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_set_lookup_path@
foreign import ccall safe "hs_bindgen_a9b4fbbc30c68928" hs_bindgen_a9b4fbbc30c68928_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_set_lookup_path@
hs_bindgen_a9b4fbbc30c68928 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_a9b4fbbc30c68928 =
  RIP.fromFFIType hs_bindgen_a9b4fbbc30c68928_base

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
  hs_bindgen_a9b4fbbc30c68928

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_build@
foreign import ccall safe "hs_bindgen_53f20675fffb3958" hs_bindgen_53f20675fffb3958_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_build@
hs_bindgen_53f20675fffb3958 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO (RIP.Ptr EvalState)
hs_bindgen_53f20675fffb3958 =
  RIP.fromFFIType hs_bindgen_53f20675fffb3958_base

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
nix_eval_state_build = hs_bindgen_53f20675fffb3958

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_free@
foreign import ccall safe "hs_bindgen_2714e47970becbf0" hs_bindgen_2714e47970becbf0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_free@
hs_bindgen_2714e47970becbf0 ::
     RIP.Ptr Nix_eval_state_builder
  -> IO ()
hs_bindgen_2714e47970becbf0 =
  RIP.fromFFIType hs_bindgen_2714e47970becbf0_base

{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free ::
     RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_eval_state_builder_free =
  hs_bindgen_2714e47970becbf0

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_create@
foreign import ccall safe "hs_bindgen_bffa66ef87705e4e" hs_bindgen_bffa66ef87705e4e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_create@
hs_bindgen_bffa66ef87705e4e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> RIP.Ptr Generated.Nix.Store.Store
  -> IO (RIP.Ptr EvalState)
hs_bindgen_bffa66ef87705e4e =
  RIP.fromFFIType hs_bindgen_bffa66ef87705e4e_base

{-| __C declaration:__ @nix_state_create@

    __defined at:__ @nix_api_expr.h 268:13@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_create ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @lookupPath@
  -> RIP.Ptr Generated.Nix.Store.Store
     -- ^ __C declaration:__ @store@
  -> IO (RIP.Ptr EvalState)
nix_state_create = hs_bindgen_bffa66ef87705e4e

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_free@
foreign import ccall safe "hs_bindgen_f5caf57308d6bc74" hs_bindgen_f5caf57308d6bc74_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_free@
hs_bindgen_f5caf57308d6bc74 ::
     RIP.Ptr EvalState
  -> IO ()
hs_bindgen_f5caf57308d6bc74 =
  RIP.fromFFIType hs_bindgen_f5caf57308d6bc74_base

{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free ::
     RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> IO ()
nix_state_free = hs_bindgen_f5caf57308d6bc74

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_incref@
foreign import ccall safe "hs_bindgen_c540f217827a2ed4" hs_bindgen_c540f217827a2ed4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_incref@
hs_bindgen_c540f217827a2ed4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c540f217827a2ed4 =
  RIP.fromFFIType hs_bindgen_c540f217827a2ed4_base

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
nix_gc_incref = hs_bindgen_c540f217827a2ed4

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_decref@
foreign import ccall safe "hs_bindgen_aad27f6399482993" hs_bindgen_aad27f6399482993_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_decref@
hs_bindgen_aad27f6399482993 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_aad27f6399482993 =
  RIP.fromFFIType hs_bindgen_aad27f6399482993_base

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
nix_gc_decref = hs_bindgen_aad27f6399482993

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_now@
foreign import ccall safe "hs_bindgen_62d93d6decefdea4" hs_bindgen_62d93d6decefdea4_base ::
     IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_now@
hs_bindgen_62d93d6decefdea4 :: IO ()
hs_bindgen_62d93d6decefdea4 =
  RIP.fromFFIType hs_bindgen_62d93d6decefdea4_base

{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: IO ()
nix_gc_now = hs_bindgen_62d93d6decefdea4

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_register_finalizer@
foreign import ccall safe "hs_bindgen_a5d04a7c4475417b" hs_bindgen_a5d04a7c4475417b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_register_finalizer@
hs_bindgen_a5d04a7c4475417b ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO ()
hs_bindgen_a5d04a7c4475417b =
  RIP.fromFFIType hs_bindgen_a5d04a7c4475417b_base

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
  hs_bindgen_a5d04a7c4475417b
