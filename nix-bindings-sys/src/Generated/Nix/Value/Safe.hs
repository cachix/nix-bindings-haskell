{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Value.Safe
    ( Generated.Nix.Value.Safe.nix_alloc_primop
    , Generated.Nix.Value.Safe.nix_register_primop
    , Generated.Nix.Value.Safe.nix_alloc_value
    , Generated.Nix.Value.Safe.nix_value_incref
    , Generated.Nix.Value.Safe.nix_value_decref
    , Generated.Nix.Value.Safe.nix_get_type
    , Generated.Nix.Value.Safe.nix_get_typename
    , Generated.Nix.Value.Safe.nix_get_bool
    , Generated.Nix.Value.Safe.nix_get_string
    , Generated.Nix.Value.Safe.nix_get_path_string
    , Generated.Nix.Value.Safe.nix_get_list_size
    , Generated.Nix.Value.Safe.nix_get_attrs_size
    , Generated.Nix.Value.Safe.nix_get_float
    , Generated.Nix.Value.Safe.nix_get_int
    , Generated.Nix.Value.Safe.nix_get_external
    , Generated.Nix.Value.Safe.nix_get_list_byidx
    , Generated.Nix.Value.Safe.nix_get_list_byidx_lazy
    , Generated.Nix.Value.Safe.nix_get_attr_byname
    , Generated.Nix.Value.Safe.nix_get_attr_byname_lazy
    , Generated.Nix.Value.Safe.nix_has_attr_byname
    , Generated.Nix.Value.Safe.nix_get_attr_byidx
    , Generated.Nix.Value.Safe.nix_get_attr_byidx_lazy
    , Generated.Nix.Value.Safe.nix_get_attr_name_byidx
    , Generated.Nix.Value.Safe.nix_init_bool
    , Generated.Nix.Value.Safe.nix_init_string
    , Generated.Nix.Value.Safe.nix_init_path_string
    , Generated.Nix.Value.Safe.nix_init_float
    , Generated.Nix.Value.Safe.nix_init_int
    , Generated.Nix.Value.Safe.nix_init_null
    , Generated.Nix.Value.Safe.nix_init_apply
    , Generated.Nix.Value.Safe.nix_init_external
    , Generated.Nix.Value.Safe.nix_make_list
    , Generated.Nix.Value.Safe.nix_make_list_builder
    , Generated.Nix.Value.Safe.nix_list_builder_insert
    , Generated.Nix.Value.Safe.nix_list_builder_free
    , Generated.Nix.Value.Safe.nix_make_attrs
    , Generated.Nix.Value.Safe.nix_init_primop
    , Generated.Nix.Value.Safe.nix_copy_value
    , Generated.Nix.Value.Safe.nix_make_bindings_builder
    , Generated.Nix.Value.Safe.nix_bindings_builder_insert
    , Generated.Nix.Value.Safe.nix_bindings_builder_free
    , Generated.Nix.Value.Safe.nix_string_realise
    , Generated.Nix.Value.Safe.nix_realised_string_get_buffer_start
    , Generated.Nix.Value.Safe.nix_realised_string_get_buffer_size
    , Generated.Nix.Value.Safe.nix_realised_string_get_store_path_count
    , Generated.Nix.Value.Safe.nix_realised_string_get_store_path
    , Generated.Nix.Value.Safe.nix_realised_string_free
    )
  where

import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Value

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_value.h>"
  , "PrimOp *hs_bindgen_0ad1ff25b7e9cd2f ("
  , "  nix_c_context *arg1,"
  , "  PrimOpFun arg2,"
  , "  signed int arg3,"
  , "  char const *arg4,"
  , "  char const **arg5,"
  , "  char const *arg6,"
  , "  void *arg7"
  , ")"
  , "{"
  , "  return (nix_alloc_primop)(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "nix_err hs_bindgen_2c2165caadb3ccf4 ("
  , "  nix_c_context *arg1,"
  , "  PrimOp *arg2"
  , ")"
  , "{"
  , "  return (nix_register_primop)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_68d044eb88159c7d ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2"
  , ")"
  , "{"
  , "  return (nix_alloc_value)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_482022a0f06d2093 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_126569138c094137 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_decref)(arg1, arg2);"
  , "}"
  , "ValueType hs_bindgen_d2288696559f3cff ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_type)(arg1, arg2);"
  , "}"
  , "char const *hs_bindgen_c6d9e6f7208dbb16 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_typename)(arg1, arg2);"
  , "}"
  , "_Bool hs_bindgen_b16972a98bb5be22 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_bool)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_12c97e03ba3e39d1 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_get_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_b11a3266f8f0d5e4 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_path_string)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_fc2b097d12a82f93 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_list_size)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_42f88483061a03c9 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_attrs_size)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_ce087fec08d03620 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_float)(arg1, arg2);"
  , "}"
  , "int64_t hs_bindgen_2b5863491badbdec ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_int)(arg1, arg2);"
  , "}"
  , "ExternalValue *hs_bindgen_feb6d50fdcac9d15 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_bcb4ba5d869f732a ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_d44efb397195471e ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_21f0945d8f00ee52 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_ff2ff05320b03107 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "_Bool hs_bindgen_9ba88732c7b938fe ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_has_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_d2a5b3ee14b8b6a9 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_value *hs_bindgen_7a5b159221a03475 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx_lazy)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "char const *hs_bindgen_9b132d9ab3db9ea7 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_name_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_ce44b5e6d2b8a58c ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  _Bool arg3"
  , ")"
  , "{"
  , "  return (nix_init_bool)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c833b3b266e7bf15 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_init_string)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_d63e4174b26ae141 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_init_path_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_f1f60a795d024c02 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return (nix_init_float)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c91827f6f6b9c4ca ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  int64_t arg3"
  , ")"
  , "{"
  , "  return (nix_init_int)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_4d7425890377233b ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_init_null)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_72453a895827d17e ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_init_apply)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_1698173d63e0711e ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  ExternalValue *arg3"
  , ")"
  , "{"
  , "  return (nix_init_external)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_699e9d89f065bef3 ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_make_list)(arg1, arg2, arg3);"
  , "}"
  , "ListBuilder *hs_bindgen_87e78709a15a7c40 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_list_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_b04d5279446b5432 ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  unsigned int arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_list_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_b74cbc7640e43b4d ("
  , "  ListBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_list_builder_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_d38ab7c367a7b87a ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  BindingsBuilder *arg3"
  , ")"
  , "{"
  , "  return (nix_make_attrs)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_5fe78333e11067c1 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  PrimOp *arg3"
  , ")"
  , "{"
  , "  return (nix_init_primop)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_8e069444629cea96 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value const *arg3"
  , ")"
  , "{"
  , "  return (nix_copy_value)(arg1, arg2, arg3);"
  , "}"
  , "BindingsBuilder *hs_bindgen_9742931a07f814b4 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_bindings_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_518aad8d2faa6c11 ("
  , "  nix_c_context *arg1,"
  , "  BindingsBuilder *arg2,"
  , "  char const *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_bindings_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_faf3650cd36f064c ("
  , "  BindingsBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_bindings_builder_free)(arg1);"
  , "}"
  , "nix_realised_string *hs_bindgen_7d743e38666c66e0 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  _Bool arg4"
  , ")"
  , "{"
  , "  return (nix_string_realise)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_fcab740cce7b1722 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_start)(arg1);"
  , "}"
  , "size_t hs_bindgen_965181eecc273354 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_size)(arg1);"
  , "}"
  , "size_t hs_bindgen_16b77ba36e3626c2 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path_count)(arg1);"
  , "}"
  , "StorePath const *hs_bindgen_b5fd19060c8d3fd5 ("
  , "  nix_realised_string *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_94669d67aa0503e1 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  (nix_realised_string_free)(arg1);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_alloc_primop@
foreign import ccall safe "hs_bindgen_0ad1ff25b7e9cd2f" hs_bindgen_0ad1ff25b7e9cd2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_alloc_primop@
hs_bindgen_0ad1ff25b7e9cd2f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PrimOpFun
  -> RIP.CInt
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr PrimOp)
hs_bindgen_0ad1ff25b7e9cd2f =
  RIP.fromFFIType hs_bindgen_0ad1ff25b7e9cd2f_base

{-| __C declaration:__ @nix_alloc_primop@

    __defined at:__ @nix_api_value.h 205:10@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_primop ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PrimOpFun
     -- ^ __C declaration:__ @fun@
  -> RIP.CInt
     -- ^ __C declaration:__ @arity@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @args@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @doc@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO (RIP.Ptr PrimOp)
nix_alloc_primop = hs_bindgen_0ad1ff25b7e9cd2f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_register_primop@
foreign import ccall safe "hs_bindgen_2c2165caadb3ccf4" hs_bindgen_2c2165caadb3ccf4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_register_primop@
hs_bindgen_2c2165caadb3ccf4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_2c2165caadb3ccf4 =
  RIP.fromFFIType hs_bindgen_2c2165caadb3ccf4_base

{-| __C declaration:__ @nix_register_primop@

    __defined at:__ @nix_api_value.h 230:9@

    __exported by:__ @nix_api_value.h@
-}
nix_register_primop ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr PrimOp
     -- ^ __C declaration:__ @primOp@
  -> IO Generated.Nix.Util.Nix_err
nix_register_primop = hs_bindgen_2c2165caadb3ccf4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_alloc_value@
foreign import ccall safe "hs_bindgen_68d044eb88159c7d" hs_bindgen_68d044eb88159c7d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_alloc_value@
hs_bindgen_68d044eb88159c7d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_68d044eb88159c7d =
  RIP.fromFFIType hs_bindgen_68d044eb88159c7d_base

{-| __C declaration:__ @nix_alloc_value@

    __defined at:__ @nix_api_value.h 242:13@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_value ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr Nix_value)
nix_alloc_value = hs_bindgen_68d044eb88159c7d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_value_incref@
foreign import ccall safe "hs_bindgen_482022a0f06d2093" hs_bindgen_482022a0f06d2093_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_value_incref@
hs_bindgen_482022a0f06d2093 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_482022a0f06d2093 =
  RIP.fromFFIType hs_bindgen_482022a0f06d2093_base

{-| __C declaration:__ @nix_value_incref@

    __defined at:__ @nix_api_value.h 254:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_incref ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_incref = hs_bindgen_482022a0f06d2093

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_value_decref@
foreign import ccall safe "hs_bindgen_126569138c094137" hs_bindgen_126569138c094137_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_value_decref@
hs_bindgen_126569138c094137 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_126569138c094137 =
  RIP.fromFFIType hs_bindgen_126569138c094137_base

{-| __C declaration:__ @nix_value_decref@

    __defined at:__ @nix_api_value.h 267:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_decref ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_value_decref = hs_bindgen_126569138c094137

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_type@
foreign import ccall safe "hs_bindgen_d2288696559f3cff" hs_bindgen_d2288696559f3cff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_type@
hs_bindgen_d2288696559f3cff ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO ValueType
hs_bindgen_d2288696559f3cff =
  RIP.fromFFIType hs_bindgen_d2288696559f3cff_base

{-| __C declaration:__ @nix_get_type@

    __defined at:__ @nix_api_value.h 275:11@

    __exported by:__ @nix_api_value.h@
-}
nix_get_type ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO ValueType
nix_get_type = hs_bindgen_d2288696559f3cff

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_typename@
foreign import ccall safe "hs_bindgen_c6d9e6f7208dbb16" hs_bindgen_c6d9e6f7208dbb16_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_typename@
hs_bindgen_c6d9e6f7208dbb16 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_c6d9e6f7208dbb16 =
  RIP.fromFFIType hs_bindgen_c6d9e6f7208dbb16_base

{-| __C declaration:__ @nix_get_typename@

    __defined at:__ @nix_api_value.h 283:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_typename ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_get_typename = hs_bindgen_c6d9e6f7208dbb16

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_bool@
foreign import ccall safe "hs_bindgen_b16972a98bb5be22" hs_bindgen_b16972a98bb5be22_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_bool@
hs_bindgen_b16972a98bb5be22 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CBool
hs_bindgen_b16972a98bb5be22 =
  RIP.fromFFIType hs_bindgen_b16972a98bb5be22_base

{-| __C declaration:__ @nix_get_bool@

    __defined at:__ @nix_api_value.h 291:6@

    __exported by:__ @nix_api_value.h@
-}
nix_get_bool ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO RIP.CBool
nix_get_bool = hs_bindgen_b16972a98bb5be22

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_string@
foreign import ccall safe "hs_bindgen_12c97e03ba3e39d1" hs_bindgen_12c97e03ba3e39d1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_string@
hs_bindgen_12c97e03ba3e39d1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_12c97e03ba3e39d1 =
  RIP.fromFFIType hs_bindgen_12c97e03ba3e39d1_base

{-| __C declaration:__ @nix_get_string@

    __defined at:__ @nix_api_value.h 305:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_get_string = hs_bindgen_12c97e03ba3e39d1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_path_string@
foreign import ccall safe "hs_bindgen_b11a3266f8f0d5e4" hs_bindgen_b11a3266f8f0d5e4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_path_string@
hs_bindgen_b11a3266f8f0d5e4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_b11a3266f8f0d5e4 =
  RIP.fromFFIType hs_bindgen_b11a3266f8f0d5e4_base

{-| __C declaration:__ @nix_get_path_string@

    __defined at:__ @nix_api_value.h 313:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_path_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_get_path_string = hs_bindgen_b11a3266f8f0d5e4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_size@
foreign import ccall safe "hs_bindgen_fc2b097d12a82f93" hs_bindgen_fc2b097d12a82f93_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_size@
hs_bindgen_fc2b097d12a82f93 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_fc2b097d12a82f93 =
  RIP.fromFFIType hs_bindgen_fc2b097d12a82f93_base

{-| __C declaration:__ @nix_get_list_size@

    __defined at:__ @nix_api_value.h 321:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_size ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO RIP.CUInt
nix_get_list_size = hs_bindgen_fc2b097d12a82f93

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attrs_size@
foreign import ccall safe "hs_bindgen_42f88483061a03c9" hs_bindgen_42f88483061a03c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attrs_size@
hs_bindgen_42f88483061a03c9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_42f88483061a03c9 =
  RIP.fromFFIType hs_bindgen_42f88483061a03c9_base

{-| __C declaration:__ @nix_get_attrs_size@

    __defined at:__ @nix_api_value.h 329:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attrs_size ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO RIP.CUInt
nix_get_attrs_size = hs_bindgen_42f88483061a03c9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_float@
foreign import ccall safe "hs_bindgen_ce087fec08d03620" hs_bindgen_ce087fec08d03620_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO Double

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_float@
hs_bindgen_ce087fec08d03620 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CDouble
hs_bindgen_ce087fec08d03620 =
  RIP.fromFFIType hs_bindgen_ce087fec08d03620_base

{-| __C declaration:__ @nix_get_float@

    __defined at:__ @nix_api_value.h 337:8@

    __exported by:__ @nix_api_value.h@
-}
nix_get_float ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO RIP.CDouble
nix_get_float = hs_bindgen_ce087fec08d03620

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_int@
foreign import ccall safe "hs_bindgen_2b5863491badbdec" hs_bindgen_2b5863491badbdec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_int@
hs_bindgen_2b5863491badbdec ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO HsBindgen.Runtime.LibC.Int64
hs_bindgen_2b5863491badbdec =
  RIP.fromFFIType hs_bindgen_2b5863491badbdec_base

{-| __C declaration:__ @nix_get_int@

    __defined at:__ @nix_api_value.h 345:9@

    __exported by:__ @nix_api_value.h@
-}
nix_get_int ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> IO HsBindgen.Runtime.LibC.Int64
nix_get_int = hs_bindgen_2b5863491badbdec

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_external@
foreign import ccall safe "hs_bindgen_feb6d50fdcac9d15" hs_bindgen_feb6d50fdcac9d15_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_external@
hs_bindgen_feb6d50fdcac9d15 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO (RIP.Ptr ExternalValue)
hs_bindgen_feb6d50fdcac9d15 =
  RIP.fromFFIType hs_bindgen_feb6d50fdcac9d15_base

{-| __C declaration:__ @nix_get_external@

    __defined at:__ @nix_api_value.h 354:17@

    __exported by:__ @nix_api_value.h@
-}
nix_get_external ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO (RIP.Ptr ExternalValue)
nix_get_external = hs_bindgen_feb6d50fdcac9d15

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_byidx@
foreign import ccall safe "hs_bindgen_bcb4ba5d869f732a" hs_bindgen_bcb4ba5d869f732a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_byidx@
hs_bindgen_bcb4ba5d869f732a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_bcb4ba5d869f732a =
  RIP.fromFFIType hs_bindgen_bcb4ba5d869f732a_base

{-| __C declaration:__ @nix_get_list_byidx@

    __defined at:__ @nix_api_value.h 366:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.CUInt
     -- ^ __C declaration:__ @ix@
  -> IO (RIP.Ptr Nix_value)
nix_get_list_byidx = hs_bindgen_bcb4ba5d869f732a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_byidx_lazy@
foreign import ccall safe "hs_bindgen_d44efb397195471e" hs_bindgen_d44efb397195471e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_list_byidx_lazy@
hs_bindgen_d44efb397195471e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_d44efb397195471e =
  RIP.fromFFIType hs_bindgen_d44efb397195471e_base

{-| __C declaration:__ @nix_get_list_byidx_lazy@

    __defined at:__ @nix_api_value.h 382:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx_lazy ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.CUInt
     -- ^ __C declaration:__ @ix@
  -> IO (RIP.Ptr Nix_value)
nix_get_list_byidx_lazy = hs_bindgen_d44efb397195471e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byname@
foreign import ccall safe "hs_bindgen_21f0945d8f00ee52" hs_bindgen_21f0945d8f00ee52_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byname@
hs_bindgen_21f0945d8f00ee52 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_21f0945d8f00ee52 =
  RIP.fromFFIType hs_bindgen_21f0945d8f00ee52_base

{-| __C declaration:__ @nix_get_attr_byname@

    __defined at:__ @nix_api_value.h 394:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Nix_value)
nix_get_attr_byname = hs_bindgen_21f0945d8f00ee52

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byname_lazy@
foreign import ccall safe "hs_bindgen_ff2ff05320b03107" hs_bindgen_ff2ff05320b03107_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byname_lazy@
hs_bindgen_ff2ff05320b03107 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_ff2ff05320b03107 =
  RIP.fromFFIType hs_bindgen_ff2ff05320b03107_base

{-| __C declaration:__ @nix_get_attr_byname_lazy@

    __defined at:__ @nix_api_value.h 410:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname_lazy ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Nix_value)
nix_get_attr_byname_lazy =
  hs_bindgen_ff2ff05320b03107

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_has_attr_byname@
foreign import ccall safe "hs_bindgen_9ba88732c7b938fe" hs_bindgen_9ba88732c7b938fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_has_attr_byname@
hs_bindgen_9ba88732c7b938fe ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO RIP.CBool
hs_bindgen_9ba88732c7b938fe =
  RIP.fromFFIType hs_bindgen_9ba88732c7b938fe_base

{-| __C declaration:__ @nix_has_attr_byname@

    __defined at:__ @nix_api_value.h 420:6@

    __exported by:__ @nix_api_value.h@
-}
nix_has_attr_byname ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO RIP.CBool
nix_has_attr_byname = hs_bindgen_9ba88732c7b938fe

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byidx@
foreign import ccall safe "hs_bindgen_d2a5b3ee14b8b6a9" hs_bindgen_d2a5b3ee14b8b6a9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byidx@
hs_bindgen_d2a5b3ee14b8b6a9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_d2a5b3ee14b8b6a9 =
  RIP.fromFFIType hs_bindgen_d2a5b3ee14b8b6a9_base

{-| __C declaration:__ @nix_get_attr_byidx@

    __defined at:__ @nix_api_value.h 446:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.CUInt
     -- ^ __C declaration:__ @i@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Nix_value)
nix_get_attr_byidx = hs_bindgen_d2a5b3ee14b8b6a9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byidx_lazy@
foreign import ccall safe "hs_bindgen_7a5b159221a03475" hs_bindgen_7a5b159221a03475_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_byidx_lazy@
hs_bindgen_7a5b159221a03475 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_7a5b159221a03475 =
  RIP.fromFFIType hs_bindgen_7a5b159221a03475_base

{-| __C declaration:__ @nix_get_attr_byidx_lazy@

    __defined at:__ @nix_api_value.h 474:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx_lazy ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.CUInt
     -- ^ __C declaration:__ @i@
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
     -- ^ __C declaration:__ @name@
  -> IO (RIP.Ptr Nix_value)
nix_get_attr_byidx_lazy = hs_bindgen_7a5b159221a03475

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_name_byidx@
foreign import ccall safe "hs_bindgen_9b132d9ab3db9ea7" hs_bindgen_9b132d9ab3db9ea7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_get_attr_name_byidx@
hs_bindgen_9b132d9ab3db9ea7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_9b132d9ab3db9ea7 =
  RIP.fromFFIType hs_bindgen_9b132d9ab3db9ea7_base

{-| __C declaration:__ @nix_get_attr_name_byidx@

    __defined at:__ @nix_api_value.h 498:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_name_byidx ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.CUInt
     -- ^ __C declaration:__ @i@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_get_attr_name_byidx = hs_bindgen_9b132d9ab3db9ea7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_bool@
foreign import ccall safe "hs_bindgen_ce44b5e6d2b8a58c" hs_bindgen_ce44b5e6d2b8a58c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_bool@
hs_bindgen_ce44b5e6d2b8a58c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ce44b5e6d2b8a58c =
  RIP.fromFFIType hs_bindgen_ce44b5e6d2b8a58c_base

{-| __C declaration:__ @nix_init_bool@

    __defined at:__ @nix_api_value.h 515:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_bool ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.CBool
     -- ^ __C declaration:__ @b@
  -> IO Generated.Nix.Util.Nix_err
nix_init_bool = hs_bindgen_ce44b5e6d2b8a58c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_string@
foreign import ccall safe "hs_bindgen_c833b3b266e7bf15" hs_bindgen_c833b3b266e7bf15_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_string@
hs_bindgen_c833b3b266e7bf15 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c833b3b266e7bf15 =
  RIP.fromFFIType hs_bindgen_c833b3b266e7bf15_base

{-| __C declaration:__ @nix_init_string@

    __defined at:__ @nix_api_value.h 524:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @str@
  -> IO Generated.Nix.Util.Nix_err
nix_init_string = hs_bindgen_c833b3b266e7bf15

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_path_string@
foreign import ccall safe "hs_bindgen_d63e4174b26ae141" hs_bindgen_d63e4174b26ae141_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_path_string@
hs_bindgen_d63e4174b26ae141 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d63e4174b26ae141 =
  RIP.fromFFIType hs_bindgen_d63e4174b26ae141_base

{-| __C declaration:__ @nix_init_path_string@

    __defined at:__ @nix_api_value.h 533:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_path_string ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @s@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @str@
  -> IO Generated.Nix.Util.Nix_err
nix_init_path_string = hs_bindgen_d63e4174b26ae141

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_float@
foreign import ccall safe "hs_bindgen_f1f60a795d024c02" hs_bindgen_f1f60a795d024c02_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_float@
hs_bindgen_f1f60a795d024c02 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CDouble
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f1f60a795d024c02 =
  RIP.fromFFIType hs_bindgen_f1f60a795d024c02_base

{-| __C declaration:__ @nix_init_float@

    __defined at:__ @nix_api_value.h 542:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_float ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.CDouble
     -- ^ __C declaration:__ @d@
  -> IO Generated.Nix.Util.Nix_err
nix_init_float = hs_bindgen_f1f60a795d024c02

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_int@
foreign import ccall safe "hs_bindgen_c91827f6f6b9c4ca" hs_bindgen_c91827f6f6b9c4ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_int@
hs_bindgen_c91827f6f6b9c4ca ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.Int64
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c91827f6f6b9c4ca =
  RIP.fromFFIType hs_bindgen_c91827f6f6b9c4ca_base

{-| __C declaration:__ @nix_init_int@

    __defined at:__ @nix_api_value.h 552:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_int ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> HsBindgen.Runtime.LibC.Int64
     -- ^ __C declaration:__ @i@
  -> IO Generated.Nix.Util.Nix_err
nix_init_int = hs_bindgen_c91827f6f6b9c4ca

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_null@
foreign import ccall safe "hs_bindgen_4d7425890377233b" hs_bindgen_4d7425890377233b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_null@
hs_bindgen_4d7425890377233b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_4d7425890377233b =
  RIP.fromFFIType hs_bindgen_4d7425890377233b_base

{-| __C declaration:__ @nix_init_null@

    __defined at:__ @nix_api_value.h 559:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_null ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_init_null = hs_bindgen_4d7425890377233b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_apply@
foreign import ccall safe "hs_bindgen_72453a895827d17e" hs_bindgen_72453a895827d17e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_apply@
hs_bindgen_72453a895827d17e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_72453a895827d17e =
  RIP.fromFFIType hs_bindgen_72453a895827d17e_base

{-| __C declaration:__ @nix_init_apply@

    __defined at:__ @nix_api_value.h 576:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_apply ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @fn@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @arg@
  -> IO Generated.Nix.Util.Nix_err
nix_init_apply = hs_bindgen_72453a895827d17e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_external@
foreign import ccall safe "hs_bindgen_1698173d63e0711e" hs_bindgen_1698173d63e0711e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_external@
hs_bindgen_1698173d63e0711e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr ExternalValue
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_1698173d63e0711e =
  RIP.fromFFIType hs_bindgen_1698173d63e0711e_base

{-| __C declaration:__ @nix_init_external@

    __defined at:__ @nix_api_value.h 585:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_external ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr ExternalValue
     -- ^ __C declaration:__ @val@
  -> IO Generated.Nix.Util.Nix_err
nix_init_external = hs_bindgen_1698173d63e0711e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_list@
foreign import ccall safe "hs_bindgen_699e9d89f065bef3" hs_bindgen_699e9d89f065bef3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_list@
hs_bindgen_699e9d89f065bef3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_699e9d89f065bef3 =
  RIP.fromFFIType hs_bindgen_699e9d89f065bef3_base

{-| __C declaration:__ @nix_make_list@

    __defined at:__ @nix_api_value.h 599:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr ListBuilder
     -- ^ __C declaration:__ @list_builder@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_make_list = hs_bindgen_699e9d89f065bef3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_list_builder@
foreign import ccall safe "hs_bindgen_87e78709a15a7c40" hs_bindgen_87e78709a15a7c40_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_list_builder@
hs_bindgen_87e78709a15a7c40 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr ListBuilder)
hs_bindgen_87e78709a15a7c40 =
  RIP.fromFFIType hs_bindgen_87e78709a15a7c40_base

{-| __C declaration:__ @nix_make_list_builder@

    __defined at:__ @nix_api_value.h 608:15@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list_builder ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @capacity@
  -> IO (RIP.Ptr ListBuilder)
nix_make_list_builder = hs_bindgen_87e78709a15a7c40

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_list_builder_insert@
foreign import ccall safe "hs_bindgen_b04d5279446b5432" hs_bindgen_b04d5279446b5432_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_list_builder_insert@
hs_bindgen_b04d5279446b5432 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.CUInt
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b04d5279446b5432 =
  RIP.fromFFIType hs_bindgen_b04d5279446b5432_base

{-| __C declaration:__ @nix_list_builder_insert@

    __defined at:__ @nix_api_value.h 618:1@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_insert ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr ListBuilder
     -- ^ __C declaration:__ @list_builder@
  -> RIP.CUInt
     -- ^ __C declaration:__ @index@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_list_builder_insert = hs_bindgen_b04d5279446b5432

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_list_builder_free@
foreign import ccall safe "hs_bindgen_b74cbc7640e43b4d" hs_bindgen_b74cbc7640e43b4d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_list_builder_free@
hs_bindgen_b74cbc7640e43b4d ::
     RIP.Ptr ListBuilder
  -> IO ()
hs_bindgen_b74cbc7640e43b4d =
  RIP.fromFFIType hs_bindgen_b74cbc7640e43b4d_base

{-| __C declaration:__ @nix_list_builder_free@

    __defined at:__ @nix_api_value.h 625:6@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_free ::
     RIP.Ptr ListBuilder
     -- ^ __C declaration:__ @list_builder@
  -> IO ()
nix_list_builder_free = hs_bindgen_b74cbc7640e43b4d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_attrs@
foreign import ccall safe "hs_bindgen_d38ab7c367a7b87a" hs_bindgen_d38ab7c367a7b87a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_attrs@
hs_bindgen_d38ab7c367a7b87a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr BindingsBuilder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d38ab7c367a7b87a =
  RIP.fromFFIType hs_bindgen_d38ab7c367a7b87a_base

{-| __C declaration:__ @nix_make_attrs@

    __defined at:__ @nix_api_value.h 639:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_attrs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr BindingsBuilder
     -- ^ __C declaration:__ @b@
  -> IO Generated.Nix.Util.Nix_err
nix_make_attrs = hs_bindgen_d38ab7c367a7b87a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_primop@
foreign import ccall safe "hs_bindgen_5fe78333e11067c1" hs_bindgen_5fe78333e11067c1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_init_primop@
hs_bindgen_5fe78333e11067c1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_5fe78333e11067c1 =
  RIP.fromFFIType hs_bindgen_5fe78333e11067c1_base

{-| __C declaration:__ @nix_init_primop@

    __defined at:__ @nix_api_value.h 649:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_primop ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.Ptr PrimOp
     -- ^ __C declaration:__ @op@
  -> IO Generated.Nix.Util.Nix_err
nix_init_primop = hs_bindgen_5fe78333e11067c1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_copy_value@
foreign import ccall safe "hs_bindgen_8e069444629cea96" hs_bindgen_8e069444629cea96_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_copy_value@
hs_bindgen_8e069444629cea96 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8e069444629cea96 =
  RIP.fromFFIType hs_bindgen_8e069444629cea96_base

{-| __C declaration:__ @nix_copy_value@

    __defined at:__ @nix_api_value.h 657:9@

    __exported by:__ @nix_api_value.h@
-}
nix_copy_value ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> PtrConst.PtrConst Nix_value
     -- ^ __C declaration:__ @source@
  -> IO Generated.Nix.Util.Nix_err
nix_copy_value = hs_bindgen_8e069444629cea96

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_bindings_builder@
foreign import ccall safe "hs_bindgen_9742931a07f814b4" hs_bindgen_9742931a07f814b4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_make_bindings_builder@
hs_bindgen_9742931a07f814b4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr BindingsBuilder)
hs_bindgen_9742931a07f814b4 =
  RIP.fromFFIType hs_bindgen_9742931a07f814b4_base

{-| __C declaration:__ @nix_make_bindings_builder@

    __defined at:__ @nix_api_value.h 666:19@

    __exported by:__ @nix_api_value.h@
-}
nix_make_bindings_builder ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @capacity@
  -> IO (RIP.Ptr BindingsBuilder)
nix_make_bindings_builder =
  hs_bindgen_9742931a07f814b4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_bindings_builder_insert@
foreign import ccall safe "hs_bindgen_518aad8d2faa6c11" hs_bindgen_518aad8d2faa6c11_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_bindings_builder_insert@
hs_bindgen_518aad8d2faa6c11 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr BindingsBuilder
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_518aad8d2faa6c11 =
  RIP.fromFFIType hs_bindgen_518aad8d2faa6c11_base

{-| __C declaration:__ @nix_bindings_builder_insert@

    __defined at:__ @nix_api_value.h 676:1@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_insert ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr BindingsBuilder
     -- ^ __C declaration:__ @builder@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> IO Generated.Nix.Util.Nix_err
nix_bindings_builder_insert =
  hs_bindgen_518aad8d2faa6c11

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_bindings_builder_free@
foreign import ccall safe "hs_bindgen_faf3650cd36f064c" hs_bindgen_faf3650cd36f064c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_bindings_builder_free@
hs_bindgen_faf3650cd36f064c ::
     RIP.Ptr BindingsBuilder
  -> IO ()
hs_bindgen_faf3650cd36f064c =
  RIP.fromFFIType hs_bindgen_faf3650cd36f064c_base

{-| __C declaration:__ @nix_bindings_builder_free@

    __defined at:__ @nix_api_value.h 683:6@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_free ::
     RIP.Ptr BindingsBuilder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_bindings_builder_free =
  hs_bindgen_faf3650cd36f064c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_string_realise@
foreign import ccall safe "hs_bindgen_7d743e38666c66e0" hs_bindgen_7d743e38666c66e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_string_realise@
hs_bindgen_7d743e38666c66e0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO (RIP.Ptr Nix_realised_string)
hs_bindgen_7d743e38666c66e0 =
  RIP.fromFFIType hs_bindgen_7d743e38666c66e0_base

{-| __C declaration:__ @nix_string_realise@

    __defined at:__ @nix_api_value.h 702:23@

    __exported by:__ @nix_api_value.h@
-}
nix_string_realise ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr EvalState
     -- ^ __C declaration:__ @state@
  -> RIP.Ptr Nix_value
     -- ^ __C declaration:__ @value@
  -> RIP.CBool
     -- ^ __C declaration:__ @isIFD@
  -> IO (RIP.Ptr Nix_realised_string)
nix_string_realise = hs_bindgen_7d743e38666c66e0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_buffer_start@
foreign import ccall safe "hs_bindgen_fcab740cce7b1722" hs_bindgen_fcab740cce7b1722_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_buffer_start@
hs_bindgen_fcab740cce7b1722 ::
     RIP.Ptr Nix_realised_string
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_fcab740cce7b1722 =
  RIP.fromFFIType hs_bindgen_fcab740cce7b1722_base

{-| __C declaration:__ @nix_realised_string_get_buffer_start@

    __defined at:__ @nix_api_value.h 708:14@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_start ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_realised_string_get_buffer_start =
  hs_bindgen_fcab740cce7b1722

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_buffer_size@
foreign import ccall safe "hs_bindgen_965181eecc273354" hs_bindgen_965181eecc273354_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_buffer_size@
hs_bindgen_965181eecc273354 ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_965181eecc273354 =
  RIP.fromFFIType hs_bindgen_965181eecc273354_base

{-| __C declaration:__ @nix_realised_string_get_buffer_size@

    __defined at:__ @nix_api_value.h 714:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_size ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_buffer_size =
  hs_bindgen_965181eecc273354

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_store_path_count@
foreign import ccall safe "hs_bindgen_16b77ba36e3626c2" hs_bindgen_16b77ba36e3626c2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_store_path_count@
hs_bindgen_16b77ba36e3626c2 ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_16b77ba36e3626c2 =
  RIP.fromFFIType hs_bindgen_16b77ba36e3626c2_base

{-| __C declaration:__ @nix_realised_string_get_store_path_count@

    __defined at:__ @nix_api_value.h 720:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path_count ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_store_path_count =
  hs_bindgen_16b77ba36e3626c2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_store_path@
foreign import ccall safe "hs_bindgen_b5fd19060c8d3fd5" hs_bindgen_b5fd19060c8d3fd5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_get_store_path@
hs_bindgen_b5fd19060c8d3fd5 ::
     RIP.Ptr Nix_realised_string
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)
hs_bindgen_b5fd19060c8d3fd5 =
  RIP.fromFFIType hs_bindgen_b5fd19060c8d3fd5_base

{-| __C declaration:__ @nix_realised_string_get_store_path@

    __defined at:__ @nix_api_value.h 727:19@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @index@
  -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)
nix_realised_string_get_store_path =
  hs_bindgen_b5fd19060c8d3fd5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_free@
foreign import ccall safe "hs_bindgen_94669d67aa0503e1" hs_bindgen_94669d67aa0503e1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Safe_nix_realised_string_free@
hs_bindgen_94669d67aa0503e1 ::
     RIP.Ptr Nix_realised_string
  -> IO ()
hs_bindgen_94669d67aa0503e1 =
  RIP.fromFFIType hs_bindgen_94669d67aa0503e1_base

{-| __C declaration:__ @nix_realised_string_free@

    __defined at:__ @nix_api_value.h 732:6@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_free ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO ()
nix_realised_string_free =
  hs_bindgen_94669d67aa0503e1
