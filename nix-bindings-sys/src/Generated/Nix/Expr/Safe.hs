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

import qualified Generated.Nix.Store.PathInfo
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Expr

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_expr.h>"
  , "nix_err hs_bindgen_a811bf2ef7e196f5 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libexpr_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_649edb683febe782 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_expr_eval_from_string)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_c2feeec97c5c65dc ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_value_call)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_c5419b44a48bb137 ("
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
  , "nix_err hs_bindgen_9a79277db0b253c6 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_276b86ac2d9e0f92 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force_deep)(arg1, arg2, arg3);"
  , "}"
  , "nix_eval_state_builder *hs_bindgen_ff264defaa388a61 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_new)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_8c47c2b034a3a00d ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_load)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_c3eb944cebfaf11c ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_set_lookup_path)(arg1, arg2, arg3);"
  , "}"
  , "EvalState *hs_bindgen_ee6f180e07b1e4be ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_build)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0c7092103e0affb0 ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  (nix_eval_state_builder_free)(arg1);"
  , "}"
  , "EvalState *hs_bindgen_dbd2af12e6774b44 ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return (nix_state_create)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_09311187356fcd8d ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  (nix_state_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_e067bea4d240be65 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_e348fb186eaa39bc ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_decref)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d59ef64887b979c3 (void)"
  , "{"
  , "  (nix_gc_now)();"
  , "}"
  , "void hs_bindgen_85f4adf80eb9483c ("
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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_libexpr_init@
foreign import ccall safe "hs_bindgen_a811bf2ef7e196f5" hs_bindgen_a811bf2ef7e196f5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_libexpr_init@
hs_bindgen_a811bf2ef7e196f5 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_a811bf2ef7e196f5 =
  RIP.fromFFIType hs_bindgen_a811bf2ef7e196f5_base

{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libexpr_init = hs_bindgen_a811bf2ef7e196f5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_expr_eval_from_string@
foreign import ccall safe "hs_bindgen_649edb683febe782" hs_bindgen_649edb683febe782_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_expr_eval_from_string@
hs_bindgen_649edb683febe782 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_649edb683febe782 =
  RIP.fromFFIType hs_bindgen_649edb683febe782_base

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
  hs_bindgen_649edb683febe782

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call@
foreign import ccall safe "hs_bindgen_c2feeec97c5c65dc" hs_bindgen_c2feeec97c5c65dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call@
hs_bindgen_c2feeec97c5c65dc ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c2feeec97c5c65dc =
  RIP.fromFFIType hs_bindgen_c2feeec97c5c65dc_base

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
nix_value_call = hs_bindgen_c2feeec97c5c65dc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call_multi@
foreign import ccall safe "hs_bindgen_c5419b44a48bb137" hs_bindgen_c5419b44a48bb137_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_call_multi@
hs_bindgen_c5419b44a48bb137 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.CSize
  -> RIP.Ptr (RIP.Ptr Nix_value)
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c5419b44a48bb137 =
  RIP.fromFFIType hs_bindgen_c5419b44a48bb137_base

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
nix_value_call_multi = hs_bindgen_c5419b44a48bb137

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force@
foreign import ccall safe "hs_bindgen_9a79277db0b253c6" hs_bindgen_9a79277db0b253c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force@
hs_bindgen_9a79277db0b253c6 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_9a79277db0b253c6 =
  RIP.fromFFIType hs_bindgen_9a79277db0b253c6_base

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
nix_value_force = hs_bindgen_9a79277db0b253c6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force_deep@
foreign import ccall safe "hs_bindgen_276b86ac2d9e0f92" hs_bindgen_276b86ac2d9e0f92_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_value_force_deep@
hs_bindgen_276b86ac2d9e0f92 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_276b86ac2d9e0f92 =
  RIP.fromFFIType hs_bindgen_276b86ac2d9e0f92_base

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
nix_value_force_deep = hs_bindgen_276b86ac2d9e0f92

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_new@
foreign import ccall safe "hs_bindgen_ff264defaa388a61" hs_bindgen_ff264defaa388a61_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_new@
hs_bindgen_ff264defaa388a61 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr Nix_eval_state_builder)
hs_bindgen_ff264defaa388a61 =
  RIP.fromFFIType hs_bindgen_ff264defaa388a61_base

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
  hs_bindgen_ff264defaa388a61

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_load@
foreign import ccall safe "hs_bindgen_8c47c2b034a3a00d" hs_bindgen_8c47c2b034a3a00d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_load@
hs_bindgen_8c47c2b034a3a00d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8c47c2b034a3a00d =
  RIP.fromFFIType hs_bindgen_8c47c2b034a3a00d_base

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
  hs_bindgen_8c47c2b034a3a00d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_set_lookup_path@
foreign import ccall safe "hs_bindgen_c3eb944cebfaf11c" hs_bindgen_c3eb944cebfaf11c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_set_lookup_path@
hs_bindgen_c3eb944cebfaf11c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c3eb944cebfaf11c =
  RIP.fromFFIType hs_bindgen_c3eb944cebfaf11c_base

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
  hs_bindgen_c3eb944cebfaf11c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_build@
foreign import ccall safe "hs_bindgen_ee6f180e07b1e4be" hs_bindgen_ee6f180e07b1e4be_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_build@
hs_bindgen_ee6f180e07b1e4be ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO (RIP.Ptr EvalState)
hs_bindgen_ee6f180e07b1e4be =
  RIP.fromFFIType hs_bindgen_ee6f180e07b1e4be_base

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
nix_eval_state_build = hs_bindgen_ee6f180e07b1e4be

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_free@
foreign import ccall safe "hs_bindgen_0c7092103e0affb0" hs_bindgen_0c7092103e0affb0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_eval_state_builder_free@
hs_bindgen_0c7092103e0affb0 ::
     RIP.Ptr Nix_eval_state_builder
  -> IO ()
hs_bindgen_0c7092103e0affb0 =
  RIP.fromFFIType hs_bindgen_0c7092103e0affb0_base

{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free ::
     RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_eval_state_builder_free =
  hs_bindgen_0c7092103e0affb0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_create@
foreign import ccall safe "hs_bindgen_dbd2af12e6774b44" hs_bindgen_dbd2af12e6774b44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_create@
hs_bindgen_dbd2af12e6774b44 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr EvalState)
hs_bindgen_dbd2af12e6774b44 =
  RIP.fromFFIType hs_bindgen_dbd2af12e6774b44_base

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
nix_state_create = hs_bindgen_dbd2af12e6774b44

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_free@
foreign import ccall safe "hs_bindgen_09311187356fcd8d" hs_bindgen_09311187356fcd8d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_state_free@
hs_bindgen_09311187356fcd8d ::
     RIP.Ptr EvalState
  -> IO ()
hs_bindgen_09311187356fcd8d =
  RIP.fromFFIType hs_bindgen_09311187356fcd8d_base

{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free ::
     RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> IO ()
nix_state_free = hs_bindgen_09311187356fcd8d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_incref@
foreign import ccall safe "hs_bindgen_e067bea4d240be65" hs_bindgen_e067bea4d240be65_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_incref@
hs_bindgen_e067bea4d240be65 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_e067bea4d240be65 =
  RIP.fromFFIType hs_bindgen_e067bea4d240be65_base

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
nix_gc_incref = hs_bindgen_e067bea4d240be65

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_decref@
foreign import ccall safe "hs_bindgen_e348fb186eaa39bc" hs_bindgen_e348fb186eaa39bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_decref@
hs_bindgen_e348fb186eaa39bc ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_e348fb186eaa39bc =
  RIP.fromFFIType hs_bindgen_e348fb186eaa39bc_base

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
nix_gc_decref = hs_bindgen_e348fb186eaa39bc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_now@
foreign import ccall safe "hs_bindgen_d59ef64887b979c3" hs_bindgen_d59ef64887b979c3_base ::
     IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_now@
hs_bindgen_d59ef64887b979c3 :: IO ()
hs_bindgen_d59ef64887b979c3 =
  RIP.fromFFIType hs_bindgen_d59ef64887b979c3_base

{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: IO ()
nix_gc_now = hs_bindgen_d59ef64887b979c3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_register_finalizer@
foreign import ccall safe "hs_bindgen_85f4adf80eb9483c" hs_bindgen_85f4adf80eb9483c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Safe_nix_gc_register_finalizer@
hs_bindgen_85f4adf80eb9483c ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO ()
hs_bindgen_85f4adf80eb9483c =
  RIP.fromFFIType hs_bindgen_85f4adf80eb9483c_base

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
  hs_bindgen_85f4adf80eb9483c
