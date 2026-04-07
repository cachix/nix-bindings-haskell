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
  , "nix_err hs_bindgen_25ee7daf18ab813c ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_libexpr_init)(arg1);"
  , "}"
  , "nix_err hs_bindgen_a597edf622ad0127 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_expr_eval_from_string)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_1a3840a54215b88b ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4,"
  , "  nix_value *arg5"
  , ")"
  , "{"
  , "  return (nix_value_call)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_71bd8e63d22491d5 ("
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
  , "nix_err hs_bindgen_2811d302c301342a ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_35ca27fcc2fd7f17 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_value_force_deep)(arg1, arg2, arg3);"
  , "}"
  , "nix_eval_state_builder *hs_bindgen_0e9b046e9368c014 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_new)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_71cdd273c3bf7ddb ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_load)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_0e0dc9f4ac966a7c ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2,"
  , "  char const **arg3"
  , ")"
  , "{"
  , "  return (nix_eval_state_builder_set_lookup_path)(arg1, arg2, arg3);"
  , "}"
  , "EvalState *hs_bindgen_90666bae9232a1c9 ("
  , "  nix_c_context *arg1,"
  , "  nix_eval_state_builder *arg2"
  , ")"
  , "{"
  , "  return (nix_eval_state_build)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_27c4f149ae6b32af ("
  , "  nix_eval_state_builder *arg1"
  , ")"
  , "{"
  , "  (nix_eval_state_builder_free)(arg1);"
  , "}"
  , "EvalState *hs_bindgen_35391fe61a80a45f ("
  , "  nix_c_context *arg1,"
  , "  char const **arg2,"
  , "  Store *arg3"
  , ")"
  , "{"
  , "  return (nix_state_create)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c22ffdd494e7fa83 ("
  , "  EvalState *arg1"
  , ")"
  , "{"
  , "  (nix_state_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_41adf3bb98ba4a38 ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_d0e34ee6a77252fb ("
  , "  nix_c_context *arg1,"
  , "  void const *arg2"
  , ")"
  , "{"
  , "  return (nix_gc_decref)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e5b8c6c482975ba5 (void)"
  , "{"
  , "  (nix_gc_now)();"
  , "}"
  , "void hs_bindgen_cc14c272f2c65572 ("
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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_libexpr_init@
foreign import ccall unsafe "hs_bindgen_25ee7daf18ab813c" hs_bindgen_25ee7daf18ab813c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_libexpr_init@
hs_bindgen_25ee7daf18ab813c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_25ee7daf18ab813c =
  RIP.fromFFIType hs_bindgen_25ee7daf18ab813c_base

{-| __C declaration:__ @nix_libexpr_init@

    __defined at:__ @nix_api_expr.h 84:9@

    __exported by:__ @nix_api_expr.h@
-}
nix_libexpr_init ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_libexpr_init = hs_bindgen_25ee7daf18ab813c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_expr_eval_from_string@
foreign import ccall unsafe "hs_bindgen_a597edf622ad0127" hs_bindgen_a597edf622ad0127_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_expr_eval_from_string@
hs_bindgen_a597edf622ad0127 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_a597edf622ad0127 =
  RIP.fromFFIType hs_bindgen_a597edf622ad0127_base

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
  hs_bindgen_a597edf622ad0127

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call@
foreign import ccall unsafe "hs_bindgen_1a3840a54215b88b" hs_bindgen_1a3840a54215b88b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call@
hs_bindgen_1a3840a54215b88b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_1a3840a54215b88b =
  RIP.fromFFIType hs_bindgen_1a3840a54215b88b_base

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
nix_value_call = hs_bindgen_1a3840a54215b88b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call_multi@
foreign import ccall unsafe "hs_bindgen_71bd8e63d22491d5" hs_bindgen_71bd8e63d22491d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_call_multi@
hs_bindgen_71bd8e63d22491d5 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.CSize
  -> RIP.Ptr (RIP.Ptr Nix_value)
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_71bd8e63d22491d5 =
  RIP.fromFFIType hs_bindgen_71bd8e63d22491d5_base

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
nix_value_call_multi = hs_bindgen_71bd8e63d22491d5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force@
foreign import ccall unsafe "hs_bindgen_2811d302c301342a" hs_bindgen_2811d302c301342a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force@
hs_bindgen_2811d302c301342a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_2811d302c301342a =
  RIP.fromFFIType hs_bindgen_2811d302c301342a_base

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
nix_value_force = hs_bindgen_2811d302c301342a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force_deep@
foreign import ccall unsafe "hs_bindgen_35ca27fcc2fd7f17" hs_bindgen_35ca27fcc2fd7f17_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_value_force_deep@
hs_bindgen_35ca27fcc2fd7f17 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_35ca27fcc2fd7f17 =
  RIP.fromFFIType hs_bindgen_35ca27fcc2fd7f17_base

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
nix_value_force_deep = hs_bindgen_35ca27fcc2fd7f17

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_new@
foreign import ccall unsafe "hs_bindgen_0e9b046e9368c014" hs_bindgen_0e9b046e9368c014_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_new@
hs_bindgen_0e9b046e9368c014 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr Nix_eval_state_builder)
hs_bindgen_0e9b046e9368c014 =
  RIP.fromFFIType hs_bindgen_0e9b046e9368c014_base

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
  hs_bindgen_0e9b046e9368c014

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_load@
foreign import ccall unsafe "hs_bindgen_71cdd273c3bf7ddb" hs_bindgen_71cdd273c3bf7ddb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_load@
hs_bindgen_71cdd273c3bf7ddb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_71cdd273c3bf7ddb =
  RIP.fromFFIType hs_bindgen_71cdd273c3bf7ddb_base

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
  hs_bindgen_71cdd273c3bf7ddb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_set_lookup_path@
foreign import ccall unsafe "hs_bindgen_0e0dc9f4ac966a7c" hs_bindgen_0e0dc9f4ac966a7c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_set_lookup_path@
hs_bindgen_0e0dc9f4ac966a7c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0e0dc9f4ac966a7c =
  RIP.fromFFIType hs_bindgen_0e0dc9f4ac966a7c_base

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
  hs_bindgen_0e0dc9f4ac966a7c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_build@
foreign import ccall unsafe "hs_bindgen_90666bae9232a1c9" hs_bindgen_90666bae9232a1c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_build@
hs_bindgen_90666bae9232a1c9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_eval_state_builder
  -> IO (RIP.Ptr EvalState)
hs_bindgen_90666bae9232a1c9 =
  RIP.fromFFIType hs_bindgen_90666bae9232a1c9_base

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
nix_eval_state_build = hs_bindgen_90666bae9232a1c9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_free@
foreign import ccall unsafe "hs_bindgen_27c4f149ae6b32af" hs_bindgen_27c4f149ae6b32af_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_eval_state_builder_free@
hs_bindgen_27c4f149ae6b32af ::
     RIP.Ptr Nix_eval_state_builder
  -> IO ()
hs_bindgen_27c4f149ae6b32af =
  RIP.fromFFIType hs_bindgen_27c4f149ae6b32af_base

{-| __C declaration:__ @nix_eval_state_builder_free@

    __defined at:__ @nix_api_expr.h 254:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_eval_state_builder_free ::
     RIP.Ptr Nix_eval_state_builder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_eval_state_builder_free =
  hs_bindgen_27c4f149ae6b32af

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_create@
foreign import ccall unsafe "hs_bindgen_35391fe61a80a45f" hs_bindgen_35391fe61a80a45f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_create@
hs_bindgen_35391fe61a80a45f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> RIP.Ptr Generated.Nix.Store.PathInfo.Store
  -> IO (RIP.Ptr EvalState)
hs_bindgen_35391fe61a80a45f =
  RIP.fromFFIType hs_bindgen_35391fe61a80a45f_base

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
nix_state_create = hs_bindgen_35391fe61a80a45f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_free@
foreign import ccall unsafe "hs_bindgen_c22ffdd494e7fa83" hs_bindgen_c22ffdd494e7fa83_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_state_free@
hs_bindgen_c22ffdd494e7fa83 ::
     RIP.Ptr EvalState
  -> IO ()
hs_bindgen_c22ffdd494e7fa83 =
  RIP.fromFFIType hs_bindgen_c22ffdd494e7fa83_base

{-| __C declaration:__ @nix_state_free@

    __defined at:__ @nix_api_expr.h 278:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_state_free ::
     RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> IO ()
nix_state_free = hs_bindgen_c22ffdd494e7fa83

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_incref@
foreign import ccall unsafe "hs_bindgen_41adf3bb98ba4a38" hs_bindgen_41adf3bb98ba4a38_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_incref@
hs_bindgen_41adf3bb98ba4a38 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_41adf3bb98ba4a38 =
  RIP.fromFFIType hs_bindgen_41adf3bb98ba4a38_base

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
nix_gc_incref = hs_bindgen_41adf3bb98ba4a38

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_decref@
foreign import ccall unsafe "hs_bindgen_d0e34ee6a77252fb" hs_bindgen_d0e34ee6a77252fb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_decref@
hs_bindgen_d0e34ee6a77252fb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d0e34ee6a77252fb =
  RIP.fromFFIType hs_bindgen_d0e34ee6a77252fb_base

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
nix_gc_decref = hs_bindgen_d0e34ee6a77252fb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_now@
foreign import ccall unsafe "hs_bindgen_e5b8c6c482975ba5" hs_bindgen_e5b8c6c482975ba5_base ::
     IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_now@
hs_bindgen_e5b8c6c482975ba5 :: IO ()
hs_bindgen_e5b8c6c482975ba5 =
  RIP.fromFFIType hs_bindgen_e5b8c6c482975ba5_base

{-| __C declaration:__ @nix_gc_now@

    __defined at:__ @nix_api_expr.h 330:6@

    __exported by:__ @nix_api_expr.h@
-}
nix_gc_now :: IO ()
nix_gc_now = hs_bindgen_e5b8c6c482975ba5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_register_finalizer@
foreign import ccall unsafe "hs_bindgen_cc14c272f2c65572" hs_bindgen_cc14c272f2c65572_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixexpr_Generated.Nix.Expr_Unsafe_nix_gc_register_finalizer@
hs_bindgen_cc14c272f2c65572 ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO ()
hs_bindgen_cc14c272f2c65572 =
  RIP.fromFFIType hs_bindgen_cc14c272f2c65572_base

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
  hs_bindgen_cc14c272f2c65572
