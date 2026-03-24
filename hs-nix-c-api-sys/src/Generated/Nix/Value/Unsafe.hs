{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Value.Unsafe
    ( Generated.Nix.Value.Unsafe.nix_alloc_primop
    , Generated.Nix.Value.Unsafe.nix_register_primop
    , Generated.Nix.Value.Unsafe.nix_alloc_value
    , Generated.Nix.Value.Unsafe.nix_value_incref
    , Generated.Nix.Value.Unsafe.nix_value_decref
    , Generated.Nix.Value.Unsafe.nix_get_type
    , Generated.Nix.Value.Unsafe.nix_get_typename
    , Generated.Nix.Value.Unsafe.nix_get_bool
    , Generated.Nix.Value.Unsafe.nix_get_string
    , Generated.Nix.Value.Unsafe.nix_get_path_string
    , Generated.Nix.Value.Unsafe.nix_get_list_size
    , Generated.Nix.Value.Unsafe.nix_get_attrs_size
    , Generated.Nix.Value.Unsafe.nix_get_float
    , Generated.Nix.Value.Unsafe.nix_get_int
    , Generated.Nix.Value.Unsafe.nix_get_external
    , Generated.Nix.Value.Unsafe.nix_get_list_byidx
    , Generated.Nix.Value.Unsafe.nix_get_list_byidx_lazy
    , Generated.Nix.Value.Unsafe.nix_get_attr_byname
    , Generated.Nix.Value.Unsafe.nix_get_attr_byname_lazy
    , Generated.Nix.Value.Unsafe.nix_has_attr_byname
    , Generated.Nix.Value.Unsafe.nix_get_attr_byidx
    , Generated.Nix.Value.Unsafe.nix_get_attr_byidx_lazy
    , Generated.Nix.Value.Unsafe.nix_get_attr_name_byidx
    , Generated.Nix.Value.Unsafe.nix_init_bool
    , Generated.Nix.Value.Unsafe.nix_init_string
    , Generated.Nix.Value.Unsafe.nix_init_path_string
    , Generated.Nix.Value.Unsafe.nix_init_float
    , Generated.Nix.Value.Unsafe.nix_init_int
    , Generated.Nix.Value.Unsafe.nix_init_null
    , Generated.Nix.Value.Unsafe.nix_init_apply
    , Generated.Nix.Value.Unsafe.nix_init_external
    , Generated.Nix.Value.Unsafe.nix_make_list
    , Generated.Nix.Value.Unsafe.nix_make_list_builder
    , Generated.Nix.Value.Unsafe.nix_list_builder_insert
    , Generated.Nix.Value.Unsafe.nix_list_builder_free
    , Generated.Nix.Value.Unsafe.nix_make_attrs
    , Generated.Nix.Value.Unsafe.nix_init_primop
    , Generated.Nix.Value.Unsafe.nix_copy_value
    , Generated.Nix.Value.Unsafe.nix_make_bindings_builder
    , Generated.Nix.Value.Unsafe.nix_bindings_builder_insert
    , Generated.Nix.Value.Unsafe.nix_bindings_builder_free
    , Generated.Nix.Value.Unsafe.nix_string_realise
    , Generated.Nix.Value.Unsafe.nix_realised_string_get_buffer_start
    , Generated.Nix.Value.Unsafe.nix_realised_string_get_buffer_size
    , Generated.Nix.Value.Unsafe.nix_realised_string_get_store_path_count
    , Generated.Nix.Value.Unsafe.nix_realised_string_get_store_path
    , Generated.Nix.Value.Unsafe.nix_realised_string_free
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
  , "PrimOp *hs_bindgen_5d03720842918704 ("
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
  , "nix_err hs_bindgen_6d117cd3b0a1efe4 ("
  , "  nix_c_context *arg1,"
  , "  PrimOp *arg2"
  , ")"
  , "{"
  , "  return (nix_register_primop)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_baec88be07cc3bfd ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2"
  , ")"
  , "{"
  , "  return (nix_alloc_value)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_bd4cba04dfb6f8d5 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_0c3c98a08e624d11 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_decref)(arg1, arg2);"
  , "}"
  , "ValueType hs_bindgen_6a3223fe28ca33cc ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_type)(arg1, arg2);"
  , "}"
  , "char const *hs_bindgen_1c20065a2ffc036c ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_typename)(arg1, arg2);"
  , "}"
  , "_Bool hs_bindgen_4f07667b5cb2670e ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_bool)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_672373f64bed71fb ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_get_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_9d5375315175973d ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_path_string)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_5e7b22856637acec ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_list_size)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_9ccad822fb578156 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_attrs_size)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_3aed69324b1e64f2 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_float)(arg1, arg2);"
  , "}"
  , "int64_t hs_bindgen_d00bce73a879cae6 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_int)(arg1, arg2);"
  , "}"
  , "ExternalValue *hs_bindgen_637c0db33230517c ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_9906e84af8d312ea ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_f1e0bf444e3b340d ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_d75d38f83773893a ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_e4545ba0b410c34b ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "_Bool hs_bindgen_3cc168dd05fd1d88 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_has_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_2c34bdf4cccd7455 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_value *hs_bindgen_fe3652be6d8c6802 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx_lazy)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "char const *hs_bindgen_533516ed63f2e1aa ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_name_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_d632397d3eda942a ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  _Bool arg3"
  , ")"
  , "{"
  , "  return (nix_init_bool)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_357f3a3524fa5193 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_init_string)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_6b53c9e1d32497ad ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_init_path_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_80b79c754fac5d02 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return (nix_init_float)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_bbea17d3a2ec248b ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  int64_t arg3"
  , ")"
  , "{"
  , "  return (nix_init_int)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_e060e1bc8cc88fcb ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_init_null)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_19ce226c589042bd ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_init_apply)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_4696476b7ca9c643 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  ExternalValue *arg3"
  , ")"
  , "{"
  , "  return (nix_init_external)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_0294309ee545ce50 ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_make_list)(arg1, arg2, arg3);"
  , "}"
  , "ListBuilder *hs_bindgen_e8205bde16d928e7 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_list_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_f8257c599887d5e3 ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  unsigned int arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_list_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_424e4724a011fa21 ("
  , "  ListBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_list_builder_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_1b6b536f61468dc4 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  BindingsBuilder *arg3"
  , ")"
  , "{"
  , "  return (nix_make_attrs)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_ea017e31ebb76fe3 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  PrimOp *arg3"
  , ")"
  , "{"
  , "  return (nix_init_primop)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_f0ee81ec0a3461e9 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value const *arg3"
  , ")"
  , "{"
  , "  return (nix_copy_value)(arg1, arg2, arg3);"
  , "}"
  , "BindingsBuilder *hs_bindgen_f2f50d7fedb43207 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_bindings_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_0d76d3db3ab00d23 ("
  , "  nix_c_context *arg1,"
  , "  BindingsBuilder *arg2,"
  , "  char const *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_bindings_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_06ac049ec26b7d0d ("
  , "  BindingsBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_bindings_builder_free)(arg1);"
  , "}"
  , "nix_realised_string *hs_bindgen_094c4777eabeb5a8 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  _Bool arg4"
  , ")"
  , "{"
  , "  return (nix_string_realise)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_d427d7c69c8e4fb8 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_start)(arg1);"
  , "}"
  , "size_t hs_bindgen_2337604b036fcfbb ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_size)(arg1);"
  , "}"
  , "size_t hs_bindgen_dfb4a54a841260ab ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path_count)(arg1);"
  , "}"
  , "StorePath const *hs_bindgen_515153f624728f92 ("
  , "  nix_realised_string *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5dbb06c459de7835 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  (nix_realised_string_free)(arg1);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_primop@
foreign import ccall unsafe "hs_bindgen_5d03720842918704" hs_bindgen_5d03720842918704_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_primop@
hs_bindgen_5d03720842918704 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PrimOpFun
  -> RIP.CInt
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr PrimOp)
hs_bindgen_5d03720842918704 =
  RIP.fromFFIType hs_bindgen_5d03720842918704_base

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
nix_alloc_primop = hs_bindgen_5d03720842918704

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_register_primop@
foreign import ccall unsafe "hs_bindgen_6d117cd3b0a1efe4" hs_bindgen_6d117cd3b0a1efe4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_register_primop@
hs_bindgen_6d117cd3b0a1efe4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_6d117cd3b0a1efe4 =
  RIP.fromFFIType hs_bindgen_6d117cd3b0a1efe4_base

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
nix_register_primop = hs_bindgen_6d117cd3b0a1efe4

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_value@
foreign import ccall unsafe "hs_bindgen_baec88be07cc3bfd" hs_bindgen_baec88be07cc3bfd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_value@
hs_bindgen_baec88be07cc3bfd ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_baec88be07cc3bfd =
  RIP.fromFFIType hs_bindgen_baec88be07cc3bfd_base

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
nix_alloc_value = hs_bindgen_baec88be07cc3bfd

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_incref@
foreign import ccall unsafe "hs_bindgen_bd4cba04dfb6f8d5" hs_bindgen_bd4cba04dfb6f8d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_incref@
hs_bindgen_bd4cba04dfb6f8d5 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bd4cba04dfb6f8d5 =
  RIP.fromFFIType hs_bindgen_bd4cba04dfb6f8d5_base

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
nix_value_incref = hs_bindgen_bd4cba04dfb6f8d5

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_decref@
foreign import ccall unsafe "hs_bindgen_0c3c98a08e624d11" hs_bindgen_0c3c98a08e624d11_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_decref@
hs_bindgen_0c3c98a08e624d11 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0c3c98a08e624d11 =
  RIP.fromFFIType hs_bindgen_0c3c98a08e624d11_base

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
nix_value_decref = hs_bindgen_0c3c98a08e624d11

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_type@
foreign import ccall unsafe "hs_bindgen_6a3223fe28ca33cc" hs_bindgen_6a3223fe28ca33cc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_type@
hs_bindgen_6a3223fe28ca33cc ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO ValueType
hs_bindgen_6a3223fe28ca33cc =
  RIP.fromFFIType hs_bindgen_6a3223fe28ca33cc_base

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
nix_get_type = hs_bindgen_6a3223fe28ca33cc

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_typename@
foreign import ccall unsafe "hs_bindgen_1c20065a2ffc036c" hs_bindgen_1c20065a2ffc036c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_typename@
hs_bindgen_1c20065a2ffc036c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_1c20065a2ffc036c =
  RIP.fromFFIType hs_bindgen_1c20065a2ffc036c_base

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
nix_get_typename = hs_bindgen_1c20065a2ffc036c

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_bool@
foreign import ccall unsafe "hs_bindgen_4f07667b5cb2670e" hs_bindgen_4f07667b5cb2670e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_bool@
hs_bindgen_4f07667b5cb2670e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CBool
hs_bindgen_4f07667b5cb2670e =
  RIP.fromFFIType hs_bindgen_4f07667b5cb2670e_base

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
nix_get_bool = hs_bindgen_4f07667b5cb2670e

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_string@
foreign import ccall unsafe "hs_bindgen_672373f64bed71fb" hs_bindgen_672373f64bed71fb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_string@
hs_bindgen_672373f64bed71fb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_672373f64bed71fb =
  RIP.fromFFIType hs_bindgen_672373f64bed71fb_base

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
nix_get_string = hs_bindgen_672373f64bed71fb

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_path_string@
foreign import ccall unsafe "hs_bindgen_9d5375315175973d" hs_bindgen_9d5375315175973d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_path_string@
hs_bindgen_9d5375315175973d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_9d5375315175973d =
  RIP.fromFFIType hs_bindgen_9d5375315175973d_base

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
nix_get_path_string = hs_bindgen_9d5375315175973d

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_size@
foreign import ccall unsafe "hs_bindgen_5e7b22856637acec" hs_bindgen_5e7b22856637acec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_size@
hs_bindgen_5e7b22856637acec ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_5e7b22856637acec =
  RIP.fromFFIType hs_bindgen_5e7b22856637acec_base

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
nix_get_list_size = hs_bindgen_5e7b22856637acec

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attrs_size@
foreign import ccall unsafe "hs_bindgen_9ccad822fb578156" hs_bindgen_9ccad822fb578156_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attrs_size@
hs_bindgen_9ccad822fb578156 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_9ccad822fb578156 =
  RIP.fromFFIType hs_bindgen_9ccad822fb578156_base

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
nix_get_attrs_size = hs_bindgen_9ccad822fb578156

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_float@
foreign import ccall unsafe "hs_bindgen_3aed69324b1e64f2" hs_bindgen_3aed69324b1e64f2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO Double

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_float@
hs_bindgen_3aed69324b1e64f2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CDouble
hs_bindgen_3aed69324b1e64f2 =
  RIP.fromFFIType hs_bindgen_3aed69324b1e64f2_base

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
nix_get_float = hs_bindgen_3aed69324b1e64f2

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_int@
foreign import ccall unsafe "hs_bindgen_d00bce73a879cae6" hs_bindgen_d00bce73a879cae6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int64

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_int@
hs_bindgen_d00bce73a879cae6 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO HsBindgen.Runtime.LibC.Int64
hs_bindgen_d00bce73a879cae6 =
  RIP.fromFFIType hs_bindgen_d00bce73a879cae6_base

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
nix_get_int = hs_bindgen_d00bce73a879cae6

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_external@
foreign import ccall unsafe "hs_bindgen_637c0db33230517c" hs_bindgen_637c0db33230517c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_external@
hs_bindgen_637c0db33230517c ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO (RIP.Ptr ExternalValue)
hs_bindgen_637c0db33230517c =
  RIP.fromFFIType hs_bindgen_637c0db33230517c_base

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
nix_get_external = hs_bindgen_637c0db33230517c

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx@
foreign import ccall unsafe "hs_bindgen_9906e84af8d312ea" hs_bindgen_9906e84af8d312ea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx@
hs_bindgen_9906e84af8d312ea ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_9906e84af8d312ea =
  RIP.fromFFIType hs_bindgen_9906e84af8d312ea_base

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
nix_get_list_byidx = hs_bindgen_9906e84af8d312ea

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_f1e0bf444e3b340d" hs_bindgen_f1e0bf444e3b340d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx_lazy@
hs_bindgen_f1e0bf444e3b340d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_f1e0bf444e3b340d =
  RIP.fromFFIType hs_bindgen_f1e0bf444e3b340d_base

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
nix_get_list_byidx_lazy = hs_bindgen_f1e0bf444e3b340d

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname@
foreign import ccall unsafe "hs_bindgen_d75d38f83773893a" hs_bindgen_d75d38f83773893a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname@
hs_bindgen_d75d38f83773893a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_d75d38f83773893a =
  RIP.fromFFIType hs_bindgen_d75d38f83773893a_base

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
nix_get_attr_byname = hs_bindgen_d75d38f83773893a

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname_lazy@
foreign import ccall unsafe "hs_bindgen_e4545ba0b410c34b" hs_bindgen_e4545ba0b410c34b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname_lazy@
hs_bindgen_e4545ba0b410c34b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_e4545ba0b410c34b =
  RIP.fromFFIType hs_bindgen_e4545ba0b410c34b_base

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
  hs_bindgen_e4545ba0b410c34b

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_has_attr_byname@
foreign import ccall unsafe "hs_bindgen_3cc168dd05fd1d88" hs_bindgen_3cc168dd05fd1d88_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_has_attr_byname@
hs_bindgen_3cc168dd05fd1d88 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO RIP.CBool
hs_bindgen_3cc168dd05fd1d88 =
  RIP.fromFFIType hs_bindgen_3cc168dd05fd1d88_base

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
nix_has_attr_byname = hs_bindgen_3cc168dd05fd1d88

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx@
foreign import ccall unsafe "hs_bindgen_2c34bdf4cccd7455" hs_bindgen_2c34bdf4cccd7455_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx@
hs_bindgen_2c34bdf4cccd7455 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_2c34bdf4cccd7455 =
  RIP.fromFFIType hs_bindgen_2c34bdf4cccd7455_base

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
nix_get_attr_byidx = hs_bindgen_2c34bdf4cccd7455

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_fe3652be6d8c6802" hs_bindgen_fe3652be6d8c6802_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx_lazy@
hs_bindgen_fe3652be6d8c6802 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_fe3652be6d8c6802 =
  RIP.fromFFIType hs_bindgen_fe3652be6d8c6802_base

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
nix_get_attr_byidx_lazy = hs_bindgen_fe3652be6d8c6802

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_name_byidx@
foreign import ccall unsafe "hs_bindgen_533516ed63f2e1aa" hs_bindgen_533516ed63f2e1aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_name_byidx@
hs_bindgen_533516ed63f2e1aa ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_533516ed63f2e1aa =
  RIP.fromFFIType hs_bindgen_533516ed63f2e1aa_base

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
nix_get_attr_name_byidx = hs_bindgen_533516ed63f2e1aa

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_bool@
foreign import ccall unsafe "hs_bindgen_d632397d3eda942a" hs_bindgen_d632397d3eda942a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_bool@
hs_bindgen_d632397d3eda942a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d632397d3eda942a =
  RIP.fromFFIType hs_bindgen_d632397d3eda942a_base

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
nix_init_bool = hs_bindgen_d632397d3eda942a

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_string@
foreign import ccall unsafe "hs_bindgen_357f3a3524fa5193" hs_bindgen_357f3a3524fa5193_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_string@
hs_bindgen_357f3a3524fa5193 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_357f3a3524fa5193 =
  RIP.fromFFIType hs_bindgen_357f3a3524fa5193_base

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
nix_init_string = hs_bindgen_357f3a3524fa5193

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_path_string@
foreign import ccall unsafe "hs_bindgen_6b53c9e1d32497ad" hs_bindgen_6b53c9e1d32497ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_path_string@
hs_bindgen_6b53c9e1d32497ad ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_6b53c9e1d32497ad =
  RIP.fromFFIType hs_bindgen_6b53c9e1d32497ad_base

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
nix_init_path_string = hs_bindgen_6b53c9e1d32497ad

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_float@
foreign import ccall unsafe "hs_bindgen_80b79c754fac5d02" hs_bindgen_80b79c754fac5d02_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_float@
hs_bindgen_80b79c754fac5d02 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CDouble
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_80b79c754fac5d02 =
  RIP.fromFFIType hs_bindgen_80b79c754fac5d02_base

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
nix_init_float = hs_bindgen_80b79c754fac5d02

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_int@
foreign import ccall unsafe "hs_bindgen_bbea17d3a2ec248b" hs_bindgen_bbea17d3a2ec248b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_int@
hs_bindgen_bbea17d3a2ec248b ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.Int64
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bbea17d3a2ec248b =
  RIP.fromFFIType hs_bindgen_bbea17d3a2ec248b_base

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
nix_init_int = hs_bindgen_bbea17d3a2ec248b

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_null@
foreign import ccall unsafe "hs_bindgen_e060e1bc8cc88fcb" hs_bindgen_e060e1bc8cc88fcb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_null@
hs_bindgen_e060e1bc8cc88fcb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_e060e1bc8cc88fcb =
  RIP.fromFFIType hs_bindgen_e060e1bc8cc88fcb_base

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
nix_init_null = hs_bindgen_e060e1bc8cc88fcb

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_apply@
foreign import ccall unsafe "hs_bindgen_19ce226c589042bd" hs_bindgen_19ce226c589042bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_apply@
hs_bindgen_19ce226c589042bd ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_19ce226c589042bd =
  RIP.fromFFIType hs_bindgen_19ce226c589042bd_base

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
nix_init_apply = hs_bindgen_19ce226c589042bd

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_external@
foreign import ccall unsafe "hs_bindgen_4696476b7ca9c643" hs_bindgen_4696476b7ca9c643_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_external@
hs_bindgen_4696476b7ca9c643 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr ExternalValue
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_4696476b7ca9c643 =
  RIP.fromFFIType hs_bindgen_4696476b7ca9c643_base

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
nix_init_external = hs_bindgen_4696476b7ca9c643

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list@
foreign import ccall unsafe "hs_bindgen_0294309ee545ce50" hs_bindgen_0294309ee545ce50_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list@
hs_bindgen_0294309ee545ce50 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0294309ee545ce50 =
  RIP.fromFFIType hs_bindgen_0294309ee545ce50_base

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
nix_make_list = hs_bindgen_0294309ee545ce50

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list_builder@
foreign import ccall unsafe "hs_bindgen_e8205bde16d928e7" hs_bindgen_e8205bde16d928e7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list_builder@
hs_bindgen_e8205bde16d928e7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr ListBuilder)
hs_bindgen_e8205bde16d928e7 =
  RIP.fromFFIType hs_bindgen_e8205bde16d928e7_base

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
nix_make_list_builder = hs_bindgen_e8205bde16d928e7

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_insert@
foreign import ccall unsafe "hs_bindgen_f8257c599887d5e3" hs_bindgen_f8257c599887d5e3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_insert@
hs_bindgen_f8257c599887d5e3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.CUInt
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f8257c599887d5e3 =
  RIP.fromFFIType hs_bindgen_f8257c599887d5e3_base

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
nix_list_builder_insert = hs_bindgen_f8257c599887d5e3

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_free@
foreign import ccall unsafe "hs_bindgen_424e4724a011fa21" hs_bindgen_424e4724a011fa21_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_free@
hs_bindgen_424e4724a011fa21 ::
     RIP.Ptr ListBuilder
  -> IO ()
hs_bindgen_424e4724a011fa21 =
  RIP.fromFFIType hs_bindgen_424e4724a011fa21_base

{-| __C declaration:__ @nix_list_builder_free@

    __defined at:__ @nix_api_value.h 625:6@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_free ::
     RIP.Ptr ListBuilder
     -- ^ __C declaration:__ @list_builder@
  -> IO ()
nix_list_builder_free = hs_bindgen_424e4724a011fa21

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_attrs@
foreign import ccall unsafe "hs_bindgen_1b6b536f61468dc4" hs_bindgen_1b6b536f61468dc4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_attrs@
hs_bindgen_1b6b536f61468dc4 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr BindingsBuilder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_1b6b536f61468dc4 =
  RIP.fromFFIType hs_bindgen_1b6b536f61468dc4_base

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
nix_make_attrs = hs_bindgen_1b6b536f61468dc4

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_primop@
foreign import ccall unsafe "hs_bindgen_ea017e31ebb76fe3" hs_bindgen_ea017e31ebb76fe3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_primop@
hs_bindgen_ea017e31ebb76fe3 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_ea017e31ebb76fe3 =
  RIP.fromFFIType hs_bindgen_ea017e31ebb76fe3_base

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
nix_init_primop = hs_bindgen_ea017e31ebb76fe3

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_copy_value@
foreign import ccall unsafe "hs_bindgen_f0ee81ec0a3461e9" hs_bindgen_f0ee81ec0a3461e9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_copy_value@
hs_bindgen_f0ee81ec0a3461e9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f0ee81ec0a3461e9 =
  RIP.fromFFIType hs_bindgen_f0ee81ec0a3461e9_base

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
nix_copy_value = hs_bindgen_f0ee81ec0a3461e9

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_bindings_builder@
foreign import ccall unsafe "hs_bindgen_f2f50d7fedb43207" hs_bindgen_f2f50d7fedb43207_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_bindings_builder@
hs_bindgen_f2f50d7fedb43207 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr BindingsBuilder)
hs_bindgen_f2f50d7fedb43207 =
  RIP.fromFFIType hs_bindgen_f2f50d7fedb43207_base

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
  hs_bindgen_f2f50d7fedb43207

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_insert@
foreign import ccall unsafe "hs_bindgen_0d76d3db3ab00d23" hs_bindgen_0d76d3db3ab00d23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_insert@
hs_bindgen_0d76d3db3ab00d23 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr BindingsBuilder
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0d76d3db3ab00d23 =
  RIP.fromFFIType hs_bindgen_0d76d3db3ab00d23_base

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
  hs_bindgen_0d76d3db3ab00d23

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_free@
foreign import ccall unsafe "hs_bindgen_06ac049ec26b7d0d" hs_bindgen_06ac049ec26b7d0d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_free@
hs_bindgen_06ac049ec26b7d0d ::
     RIP.Ptr BindingsBuilder
  -> IO ()
hs_bindgen_06ac049ec26b7d0d =
  RIP.fromFFIType hs_bindgen_06ac049ec26b7d0d_base

{-| __C declaration:__ @nix_bindings_builder_free@

    __defined at:__ @nix_api_value.h 683:6@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_free ::
     RIP.Ptr BindingsBuilder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_bindings_builder_free =
  hs_bindgen_06ac049ec26b7d0d

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_string_realise@
foreign import ccall unsafe "hs_bindgen_094c4777eabeb5a8" hs_bindgen_094c4777eabeb5a8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_string_realise@
hs_bindgen_094c4777eabeb5a8 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO (RIP.Ptr Nix_realised_string)
hs_bindgen_094c4777eabeb5a8 =
  RIP.fromFFIType hs_bindgen_094c4777eabeb5a8_base

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
nix_string_realise = hs_bindgen_094c4777eabeb5a8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_start@
foreign import ccall unsafe "hs_bindgen_d427d7c69c8e4fb8" hs_bindgen_d427d7c69c8e4fb8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_start@
hs_bindgen_d427d7c69c8e4fb8 ::
     RIP.Ptr Nix_realised_string
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_d427d7c69c8e4fb8 =
  RIP.fromFFIType hs_bindgen_d427d7c69c8e4fb8_base

{-| __C declaration:__ @nix_realised_string_get_buffer_start@

    __defined at:__ @nix_api_value.h 708:14@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_start ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_realised_string_get_buffer_start =
  hs_bindgen_d427d7c69c8e4fb8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_size@
foreign import ccall unsafe "hs_bindgen_2337604b036fcfbb" hs_bindgen_2337604b036fcfbb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_size@
hs_bindgen_2337604b036fcfbb ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_2337604b036fcfbb =
  RIP.fromFFIType hs_bindgen_2337604b036fcfbb_base

{-| __C declaration:__ @nix_realised_string_get_buffer_size@

    __defined at:__ @nix_api_value.h 714:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_size ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_buffer_size =
  hs_bindgen_2337604b036fcfbb

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path_count@
foreign import ccall unsafe "hs_bindgen_dfb4a54a841260ab" hs_bindgen_dfb4a54a841260ab_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path_count@
hs_bindgen_dfb4a54a841260ab ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_dfb4a54a841260ab =
  RIP.fromFFIType hs_bindgen_dfb4a54a841260ab_base

{-| __C declaration:__ @nix_realised_string_get_store_path_count@

    __defined at:__ @nix_api_value.h 720:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path_count ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_store_path_count =
  hs_bindgen_dfb4a54a841260ab

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path@
foreign import ccall unsafe "hs_bindgen_515153f624728f92" hs_bindgen_515153f624728f92_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path@
hs_bindgen_515153f624728f92 ::
     RIP.Ptr Nix_realised_string
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)
hs_bindgen_515153f624728f92 =
  RIP.fromFFIType hs_bindgen_515153f624728f92_base

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
  hs_bindgen_515153f624728f92

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_free@
foreign import ccall unsafe "hs_bindgen_5dbb06c459de7835" hs_bindgen_5dbb06c459de7835_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_free@
hs_bindgen_5dbb06c459de7835 ::
     RIP.Ptr Nix_realised_string
  -> IO ()
hs_bindgen_5dbb06c459de7835 =
  RIP.fromFFIType hs_bindgen_5dbb06c459de7835_base

{-| __C declaration:__ @nix_realised_string_free@

    __defined at:__ @nix_api_value.h 732:6@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_free ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO ()
nix_realised_string_free =
  hs_bindgen_5dbb06c459de7835
