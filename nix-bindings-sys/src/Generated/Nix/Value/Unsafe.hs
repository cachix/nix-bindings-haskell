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
  , "PrimOp *hs_bindgen_db33abfcd39c4cb2 ("
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
  , "nix_err hs_bindgen_b728e165fd473df2 ("
  , "  nix_c_context *arg1,"
  , "  PrimOp *arg2"
  , ")"
  , "{"
  , "  return (nix_register_primop)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_5ba4c8113018f910 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2"
  , ")"
  , "{"
  , "  return (nix_alloc_value)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_0f153ecb632066c6 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_incref)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_abd1a576f51e2bba ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_value_decref)(arg1, arg2);"
  , "}"
  , "ValueType hs_bindgen_8057c6ac5fd61b18 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_type)(arg1, arg2);"
  , "}"
  , "char const *hs_bindgen_bf68bd99154c397e ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_typename)(arg1, arg2);"
  , "}"
  , "_Bool hs_bindgen_93fe1ece85b5513a ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_bool)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_109b546bee78cf4a ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_get_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_cd2cf9bd46032639 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_path_string)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_5cf84ccaf058b0c8 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_list_size)(arg1, arg2);"
  , "}"
  , "unsigned int hs_bindgen_0e21800f1f579420 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_attrs_size)(arg1, arg2);"
  , "}"
  , "double hs_bindgen_8896d6d0b8e72ee0 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_float)(arg1, arg2);"
  , "}"
  , "int64_t hs_bindgen_83953c46d1c4b460 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return (nix_get_int)(arg1, arg2);"
  , "}"
  , "ExternalValue *hs_bindgen_bd25c22057aa8151 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_get_external)(arg1, arg2);"
  , "}"
  , "nix_value *hs_bindgen_d1f71be079b8e674 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_ef600b2d903aff68 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_list_byidx_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_aa98499552dd1341 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_6d0f803545579f72 ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_byname_lazy)(arg1, arg2, arg3, arg4);"
  , "}"
  , "_Bool hs_bindgen_040420c41f43a71f ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_has_attr_byname)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_value *hs_bindgen_4812c07d07dc605d ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_value *hs_bindgen_b296cd75aff28071 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return (nix_get_attr_byidx_lazy)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "char const *hs_bindgen_ef29780ea7b193a7 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return (nix_get_attr_name_byidx)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_d4f49c61e91d8db7 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  _Bool arg3"
  , ")"
  , "{"
  , "  return (nix_init_bool)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_04c44ea27817cf55 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return (nix_init_string)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_dd47eaab0f1ae4ad ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return (nix_init_path_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_66cab378e84606af ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return (nix_init_float)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_bfbecf990e0589b2 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  int64_t arg3"
  , ")"
  , "{"
  , "  return (nix_init_int)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_923137d436dd4bf1 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return (nix_init_null)(arg1, arg2);"
  , "}"
  , "nix_err hs_bindgen_cbc50de99d8f9012 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_init_apply)(arg1, arg2, arg3, arg4);"
  , "}"
  , "nix_err hs_bindgen_271d3a4e7703eabb ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  ExternalValue *arg3"
  , ")"
  , "{"
  , "  return (nix_init_external)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_f41b3677348430ea ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return (nix_make_list)(arg1, arg2, arg3);"
  , "}"
  , "ListBuilder *hs_bindgen_f2124645f6a80cca ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_list_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_8cf7d183032d87f9 ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  unsigned int arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_list_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_a05c0c87dcb45440 ("
  , "  ListBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_list_builder_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_8c0ceab3138b8795 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  BindingsBuilder *arg3"
  , ")"
  , "{"
  , "  return (nix_make_attrs)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c19bfcc787253d89 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  PrimOp *arg3"
  , ")"
  , "{"
  , "  return (nix_init_primop)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c31bd6f8c8356899 ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value const *arg3"
  , ")"
  , "{"
  , "  return (nix_copy_value)(arg1, arg2, arg3);"
  , "}"
  , "BindingsBuilder *hs_bindgen_b100722324fc54e0 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return (nix_make_bindings_builder)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_912472620e680c13 ("
  , "  nix_c_context *arg1,"
  , "  BindingsBuilder *arg2,"
  , "  char const *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return (nix_bindings_builder_insert)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e75ac7024ad59311 ("
  , "  BindingsBuilder *arg1"
  , ")"
  , "{"
  , "  (nix_bindings_builder_free)(arg1);"
  , "}"
  , "nix_realised_string *hs_bindgen_015561a80fd33de9 ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  _Bool arg4"
  , ")"
  , "{"
  , "  return (nix_string_realise)(arg1, arg2, arg3, arg4);"
  , "}"
  , "char const *hs_bindgen_17d1662a543130c6 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_start)(arg1);"
  , "}"
  , "size_t hs_bindgen_22fa6bfa4cf22f50 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_buffer_size)(arg1);"
  , "}"
  , "size_t hs_bindgen_e12b702018544e3b ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path_count)(arg1);"
  , "}"
  , "StorePath const *hs_bindgen_0350a63d419c6ee9 ("
  , "  nix_realised_string *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return (nix_realised_string_get_store_path)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b57252ed99241b63 ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  (nix_realised_string_free)(arg1);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_primop@
foreign import ccall unsafe "hs_bindgen_db33abfcd39c4cb2" hs_bindgen_db33abfcd39c4cb2_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_primop@
hs_bindgen_db33abfcd39c4cb2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PrimOpFun
  -> RIP.CInt
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr PrimOp)
hs_bindgen_db33abfcd39c4cb2 =
  RIP.fromFFIType hs_bindgen_db33abfcd39c4cb2_base

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
nix_alloc_primop = hs_bindgen_db33abfcd39c4cb2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_register_primop@
foreign import ccall unsafe "hs_bindgen_b728e165fd473df2" hs_bindgen_b728e165fd473df2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_register_primop@
hs_bindgen_b728e165fd473df2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_b728e165fd473df2 =
  RIP.fromFFIType hs_bindgen_b728e165fd473df2_base

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
nix_register_primop = hs_bindgen_b728e165fd473df2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_value@
foreign import ccall unsafe "hs_bindgen_5ba4c8113018f910" hs_bindgen_5ba4c8113018f910_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_alloc_value@
hs_bindgen_5ba4c8113018f910 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_5ba4c8113018f910 =
  RIP.fromFFIType hs_bindgen_5ba4c8113018f910_base

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
nix_alloc_value = hs_bindgen_5ba4c8113018f910

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_incref@
foreign import ccall unsafe "hs_bindgen_0f153ecb632066c6" hs_bindgen_0f153ecb632066c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_incref@
hs_bindgen_0f153ecb632066c6 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_0f153ecb632066c6 =
  RIP.fromFFIType hs_bindgen_0f153ecb632066c6_base

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
nix_value_incref = hs_bindgen_0f153ecb632066c6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_decref@
foreign import ccall unsafe "hs_bindgen_abd1a576f51e2bba" hs_bindgen_abd1a576f51e2bba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_value_decref@
hs_bindgen_abd1a576f51e2bba ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_abd1a576f51e2bba =
  RIP.fromFFIType hs_bindgen_abd1a576f51e2bba_base

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
nix_value_decref = hs_bindgen_abd1a576f51e2bba

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_type@
foreign import ccall unsafe "hs_bindgen_8057c6ac5fd61b18" hs_bindgen_8057c6ac5fd61b18_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_type@
hs_bindgen_8057c6ac5fd61b18 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO ValueType
hs_bindgen_8057c6ac5fd61b18 =
  RIP.fromFFIType hs_bindgen_8057c6ac5fd61b18_base

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
nix_get_type = hs_bindgen_8057c6ac5fd61b18

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_typename@
foreign import ccall unsafe "hs_bindgen_bf68bd99154c397e" hs_bindgen_bf68bd99154c397e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_typename@
hs_bindgen_bf68bd99154c397e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_bf68bd99154c397e =
  RIP.fromFFIType hs_bindgen_bf68bd99154c397e_base

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
nix_get_typename = hs_bindgen_bf68bd99154c397e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_bool@
foreign import ccall unsafe "hs_bindgen_93fe1ece85b5513a" hs_bindgen_93fe1ece85b5513a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_bool@
hs_bindgen_93fe1ece85b5513a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CBool
hs_bindgen_93fe1ece85b5513a =
  RIP.fromFFIType hs_bindgen_93fe1ece85b5513a_base

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
nix_get_bool = hs_bindgen_93fe1ece85b5513a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_string@
foreign import ccall unsafe "hs_bindgen_109b546bee78cf4a" hs_bindgen_109b546bee78cf4a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_string@
hs_bindgen_109b546bee78cf4a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_109b546bee78cf4a =
  RIP.fromFFIType hs_bindgen_109b546bee78cf4a_base

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
nix_get_string = hs_bindgen_109b546bee78cf4a

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_path_string@
foreign import ccall unsafe "hs_bindgen_cd2cf9bd46032639" hs_bindgen_cd2cf9bd46032639_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_path_string@
hs_bindgen_cd2cf9bd46032639 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_cd2cf9bd46032639 =
  RIP.fromFFIType hs_bindgen_cd2cf9bd46032639_base

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
nix_get_path_string = hs_bindgen_cd2cf9bd46032639

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_size@
foreign import ccall unsafe "hs_bindgen_5cf84ccaf058b0c8" hs_bindgen_5cf84ccaf058b0c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_size@
hs_bindgen_5cf84ccaf058b0c8 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_5cf84ccaf058b0c8 =
  RIP.fromFFIType hs_bindgen_5cf84ccaf058b0c8_base

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
nix_get_list_size = hs_bindgen_5cf84ccaf058b0c8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attrs_size@
foreign import ccall unsafe "hs_bindgen_0e21800f1f579420" hs_bindgen_0e21800f1f579420_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attrs_size@
hs_bindgen_0e21800f1f579420 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CUInt
hs_bindgen_0e21800f1f579420 =
  RIP.fromFFIType hs_bindgen_0e21800f1f579420_base

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
nix_get_attrs_size = hs_bindgen_0e21800f1f579420

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_float@
foreign import ccall unsafe "hs_bindgen_8896d6d0b8e72ee0" hs_bindgen_8896d6d0b8e72ee0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO Double

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_float@
hs_bindgen_8896d6d0b8e72ee0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO RIP.CDouble
hs_bindgen_8896d6d0b8e72ee0 =
  RIP.fromFFIType hs_bindgen_8896d6d0b8e72ee0_base

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
nix_get_float = hs_bindgen_8896d6d0b8e72ee0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_int@
foreign import ccall unsafe "hs_bindgen_83953c46d1c4b460" hs_bindgen_83953c46d1c4b460_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_int@
hs_bindgen_83953c46d1c4b460 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> IO HsBindgen.Runtime.LibC.Int64
hs_bindgen_83953c46d1c4b460 =
  RIP.fromFFIType hs_bindgen_83953c46d1c4b460_base

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
nix_get_int = hs_bindgen_83953c46d1c4b460

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_external@
foreign import ccall unsafe "hs_bindgen_bd25c22057aa8151" hs_bindgen_bd25c22057aa8151_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_external@
hs_bindgen_bd25c22057aa8151 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO (RIP.Ptr ExternalValue)
hs_bindgen_bd25c22057aa8151 =
  RIP.fromFFIType hs_bindgen_bd25c22057aa8151_base

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
nix_get_external = hs_bindgen_bd25c22057aa8151

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx@
foreign import ccall unsafe "hs_bindgen_d1f71be079b8e674" hs_bindgen_d1f71be079b8e674_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx@
hs_bindgen_d1f71be079b8e674 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_d1f71be079b8e674 =
  RIP.fromFFIType hs_bindgen_d1f71be079b8e674_base

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
nix_get_list_byidx = hs_bindgen_d1f71be079b8e674

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_ef600b2d903aff68" hs_bindgen_ef600b2d903aff68_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_list_byidx_lazy@
hs_bindgen_ef600b2d903aff68 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_ef600b2d903aff68 =
  RIP.fromFFIType hs_bindgen_ef600b2d903aff68_base

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
nix_get_list_byidx_lazy = hs_bindgen_ef600b2d903aff68

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname@
foreign import ccall unsafe "hs_bindgen_aa98499552dd1341" hs_bindgen_aa98499552dd1341_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname@
hs_bindgen_aa98499552dd1341 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_aa98499552dd1341 =
  RIP.fromFFIType hs_bindgen_aa98499552dd1341_base

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
nix_get_attr_byname = hs_bindgen_aa98499552dd1341

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname_lazy@
foreign import ccall unsafe "hs_bindgen_6d0f803545579f72" hs_bindgen_6d0f803545579f72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byname_lazy@
hs_bindgen_6d0f803545579f72 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_6d0f803545579f72 =
  RIP.fromFFIType hs_bindgen_6d0f803545579f72_base

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
  hs_bindgen_6d0f803545579f72

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_has_attr_byname@
foreign import ccall unsafe "hs_bindgen_040420c41f43a71f" hs_bindgen_040420c41f43a71f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_has_attr_byname@
hs_bindgen_040420c41f43a71f ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_value
  -> RIP.Ptr EvalState
  -> PtrConst.PtrConst RIP.CChar
  -> IO RIP.CBool
hs_bindgen_040420c41f43a71f =
  RIP.fromFFIType hs_bindgen_040420c41f43a71f_base

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
nix_has_attr_byname = hs_bindgen_040420c41f43a71f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx@
foreign import ccall unsafe "hs_bindgen_4812c07d07dc605d" hs_bindgen_4812c07d07dc605d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx@
hs_bindgen_4812c07d07dc605d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_4812c07d07dc605d =
  RIP.fromFFIType hs_bindgen_4812c07d07dc605d_base

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
nix_get_attr_byidx = hs_bindgen_4812c07d07dc605d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_b296cd75aff28071" hs_bindgen_b296cd75aff28071_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_byidx_lazy@
hs_bindgen_b296cd75aff28071 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> RIP.Ptr (PtrConst.PtrConst RIP.CChar)
  -> IO (RIP.Ptr Nix_value)
hs_bindgen_b296cd75aff28071 =
  RIP.fromFFIType hs_bindgen_b296cd75aff28071_base

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
nix_get_attr_byidx_lazy = hs_bindgen_b296cd75aff28071

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_name_byidx@
foreign import ccall unsafe "hs_bindgen_ef29780ea7b193a7" hs_bindgen_ef29780ea7b193a7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_get_attr_name_byidx@
hs_bindgen_ef29780ea7b193a7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr EvalState
  -> RIP.CUInt
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_ef29780ea7b193a7 =
  RIP.fromFFIType hs_bindgen_ef29780ea7b193a7_base

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
nix_get_attr_name_byidx = hs_bindgen_ef29780ea7b193a7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_bool@
foreign import ccall unsafe "hs_bindgen_d4f49c61e91d8db7" hs_bindgen_d4f49c61e91d8db7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_bool@
hs_bindgen_d4f49c61e91d8db7 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_d4f49c61e91d8db7 =
  RIP.fromFFIType hs_bindgen_d4f49c61e91d8db7_base

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
nix_init_bool = hs_bindgen_d4f49c61e91d8db7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_string@
foreign import ccall unsafe "hs_bindgen_04c44ea27817cf55" hs_bindgen_04c44ea27817cf55_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_string@
hs_bindgen_04c44ea27817cf55 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_04c44ea27817cf55 =
  RIP.fromFFIType hs_bindgen_04c44ea27817cf55_base

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
nix_init_string = hs_bindgen_04c44ea27817cf55

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_path_string@
foreign import ccall unsafe "hs_bindgen_dd47eaab0f1ae4ad" hs_bindgen_dd47eaab0f1ae4ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_path_string@
hs_bindgen_dd47eaab0f1ae4ad ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_dd47eaab0f1ae4ad =
  RIP.fromFFIType hs_bindgen_dd47eaab0f1ae4ad_base

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
nix_init_path_string = hs_bindgen_dd47eaab0f1ae4ad

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_float@
foreign import ccall unsafe "hs_bindgen_66cab378e84606af" hs_bindgen_66cab378e84606af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_float@
hs_bindgen_66cab378e84606af ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.CDouble
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_66cab378e84606af =
  RIP.fromFFIType hs_bindgen_66cab378e84606af_base

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
nix_init_float = hs_bindgen_66cab378e84606af

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_int@
foreign import ccall unsafe "hs_bindgen_bfbecf990e0589b2" hs_bindgen_bfbecf990e0589b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int64
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_int@
hs_bindgen_bfbecf990e0589b2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> HsBindgen.Runtime.LibC.Int64
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_bfbecf990e0589b2 =
  RIP.fromFFIType hs_bindgen_bfbecf990e0589b2_base

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
nix_init_int = hs_bindgen_bfbecf990e0589b2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_null@
foreign import ccall unsafe "hs_bindgen_923137d436dd4bf1" hs_bindgen_923137d436dd4bf1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_null@
hs_bindgen_923137d436dd4bf1 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_923137d436dd4bf1 =
  RIP.fromFFIType hs_bindgen_923137d436dd4bf1_base

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
nix_init_null = hs_bindgen_923137d436dd4bf1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_apply@
foreign import ccall unsafe "hs_bindgen_cbc50de99d8f9012" hs_bindgen_cbc50de99d8f9012_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_apply@
hs_bindgen_cbc50de99d8f9012 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_cbc50de99d8f9012 =
  RIP.fromFFIType hs_bindgen_cbc50de99d8f9012_base

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
nix_init_apply = hs_bindgen_cbc50de99d8f9012

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_external@
foreign import ccall unsafe "hs_bindgen_271d3a4e7703eabb" hs_bindgen_271d3a4e7703eabb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_external@
hs_bindgen_271d3a4e7703eabb ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr ExternalValue
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_271d3a4e7703eabb =
  RIP.fromFFIType hs_bindgen_271d3a4e7703eabb_base

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
nix_init_external = hs_bindgen_271d3a4e7703eabb

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list@
foreign import ccall unsafe "hs_bindgen_f41b3677348430ea" hs_bindgen_f41b3677348430ea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list@
hs_bindgen_f41b3677348430ea ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f41b3677348430ea =
  RIP.fromFFIType hs_bindgen_f41b3677348430ea_base

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
nix_make_list = hs_bindgen_f41b3677348430ea

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list_builder@
foreign import ccall unsafe "hs_bindgen_f2124645f6a80cca" hs_bindgen_f2124645f6a80cca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_list_builder@
hs_bindgen_f2124645f6a80cca ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr ListBuilder)
hs_bindgen_f2124645f6a80cca =
  RIP.fromFFIType hs_bindgen_f2124645f6a80cca_base

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
nix_make_list_builder = hs_bindgen_f2124645f6a80cca

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_insert@
foreign import ccall unsafe "hs_bindgen_8cf7d183032d87f9" hs_bindgen_8cf7d183032d87f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_insert@
hs_bindgen_8cf7d183032d87f9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr ListBuilder
  -> RIP.CUInt
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8cf7d183032d87f9 =
  RIP.fromFFIType hs_bindgen_8cf7d183032d87f9_base

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
nix_list_builder_insert = hs_bindgen_8cf7d183032d87f9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_free@
foreign import ccall unsafe "hs_bindgen_a05c0c87dcb45440" hs_bindgen_a05c0c87dcb45440_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_list_builder_free@
hs_bindgen_a05c0c87dcb45440 ::
     RIP.Ptr ListBuilder
  -> IO ()
hs_bindgen_a05c0c87dcb45440 =
  RIP.fromFFIType hs_bindgen_a05c0c87dcb45440_base

{-| __C declaration:__ @nix_list_builder_free@

    __defined at:__ @nix_api_value.h 625:6@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_free ::
     RIP.Ptr ListBuilder
     -- ^ __C declaration:__ @list_builder@
  -> IO ()
nix_list_builder_free = hs_bindgen_a05c0c87dcb45440

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_attrs@
foreign import ccall unsafe "hs_bindgen_8c0ceab3138b8795" hs_bindgen_8c0ceab3138b8795_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_attrs@
hs_bindgen_8c0ceab3138b8795 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr BindingsBuilder
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_8c0ceab3138b8795 =
  RIP.fromFFIType hs_bindgen_8c0ceab3138b8795_base

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
nix_make_attrs = hs_bindgen_8c0ceab3138b8795

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_primop@
foreign import ccall unsafe "hs_bindgen_c19bfcc787253d89" hs_bindgen_c19bfcc787253d89_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_init_primop@
hs_bindgen_c19bfcc787253d89 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> RIP.Ptr PrimOp
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c19bfcc787253d89 =
  RIP.fromFFIType hs_bindgen_c19bfcc787253d89_base

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
nix_init_primop = hs_bindgen_c19bfcc787253d89

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_copy_value@
foreign import ccall unsafe "hs_bindgen_c31bd6f8c8356899" hs_bindgen_c31bd6f8c8356899_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_copy_value@
hs_bindgen_c31bd6f8c8356899 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Nix_value
  -> PtrConst.PtrConst Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c31bd6f8c8356899 =
  RIP.fromFFIType hs_bindgen_c31bd6f8c8356899_base

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
nix_copy_value = hs_bindgen_c31bd6f8c8356899

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_bindings_builder@
foreign import ccall unsafe "hs_bindgen_b100722324fc54e0" hs_bindgen_b100722324fc54e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_make_bindings_builder@
hs_bindgen_b100722324fc54e0 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr BindingsBuilder)
hs_bindgen_b100722324fc54e0 =
  RIP.fromFFIType hs_bindgen_b100722324fc54e0_base

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
  hs_bindgen_b100722324fc54e0

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_insert@
foreign import ccall unsafe "hs_bindgen_912472620e680c13" hs_bindgen_912472620e680c13_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_insert@
hs_bindgen_912472620e680c13 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr BindingsBuilder
  -> PtrConst.PtrConst RIP.CChar
  -> RIP.Ptr Nix_value
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_912472620e680c13 =
  RIP.fromFFIType hs_bindgen_912472620e680c13_base

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
  hs_bindgen_912472620e680c13

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_free@
foreign import ccall unsafe "hs_bindgen_e75ac7024ad59311" hs_bindgen_e75ac7024ad59311_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_bindings_builder_free@
hs_bindgen_e75ac7024ad59311 ::
     RIP.Ptr BindingsBuilder
  -> IO ()
hs_bindgen_e75ac7024ad59311 =
  RIP.fromFFIType hs_bindgen_e75ac7024ad59311_base

{-| __C declaration:__ @nix_bindings_builder_free@

    __defined at:__ @nix_api_value.h 683:6@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_free ::
     RIP.Ptr BindingsBuilder
     -- ^ __C declaration:__ @builder@
  -> IO ()
nix_bindings_builder_free =
  hs_bindgen_e75ac7024ad59311

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_string_realise@
foreign import ccall unsafe "hs_bindgen_015561a80fd33de9" hs_bindgen_015561a80fd33de9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word8
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_string_realise@
hs_bindgen_015561a80fd33de9 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr EvalState
  -> RIP.Ptr Nix_value
  -> RIP.CBool
  -> IO (RIP.Ptr Nix_realised_string)
hs_bindgen_015561a80fd33de9 =
  RIP.fromFFIType hs_bindgen_015561a80fd33de9_base

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
nix_string_realise = hs_bindgen_015561a80fd33de9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_start@
foreign import ccall unsafe "hs_bindgen_17d1662a543130c6" hs_bindgen_17d1662a543130c6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_start@
hs_bindgen_17d1662a543130c6 ::
     RIP.Ptr Nix_realised_string
  -> IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_17d1662a543130c6 =
  RIP.fromFFIType hs_bindgen_17d1662a543130c6_base

{-| __C declaration:__ @nix_realised_string_get_buffer_start@

    __defined at:__ @nix_api_value.h 708:14@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_start ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO (PtrConst.PtrConst RIP.CChar)
nix_realised_string_get_buffer_start =
  hs_bindgen_17d1662a543130c6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_size@
foreign import ccall unsafe "hs_bindgen_22fa6bfa4cf22f50" hs_bindgen_22fa6bfa4cf22f50_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_buffer_size@
hs_bindgen_22fa6bfa4cf22f50 ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_22fa6bfa4cf22f50 =
  RIP.fromFFIType hs_bindgen_22fa6bfa4cf22f50_base

{-| __C declaration:__ @nix_realised_string_get_buffer_size@

    __defined at:__ @nix_api_value.h 714:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_size ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_buffer_size =
  hs_bindgen_22fa6bfa4cf22f50

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path_count@
foreign import ccall unsafe "hs_bindgen_e12b702018544e3b" hs_bindgen_e12b702018544e3b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word64

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path_count@
hs_bindgen_e12b702018544e3b ::
     RIP.Ptr Nix_realised_string
  -> IO HsBindgen.Runtime.LibC.CSize
hs_bindgen_e12b702018544e3b =
  RIP.fromFFIType hs_bindgen_e12b702018544e3b_base

{-| __C declaration:__ @nix_realised_string_get_store_path_count@

    __defined at:__ @nix_api_value.h 720:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path_count ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO HsBindgen.Runtime.LibC.CSize
nix_realised_string_get_store_path_count =
  hs_bindgen_e12b702018544e3b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path@
foreign import ccall unsafe "hs_bindgen_0350a63d419c6ee9" hs_bindgen_0350a63d419c6ee9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_get_store_path@
hs_bindgen_0350a63d419c6ee9 ::
     RIP.Ptr Nix_realised_string
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)
hs_bindgen_0350a63d419c6ee9 =
  RIP.fromFFIType hs_bindgen_0350a63d419c6ee9_base

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
  hs_bindgen_0350a63d419c6ee9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_free@
foreign import ccall unsafe "hs_bindgen_b57252ed99241b63" hs_bindgen_b57252ed99241b63_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_Unsafe_nix_realised_string_free@
hs_bindgen_b57252ed99241b63 ::
     RIP.Ptr Nix_realised_string
  -> IO ()
hs_bindgen_b57252ed99241b63 =
  RIP.fromFFIType hs_bindgen_b57252ed99241b63_base

{-| __C declaration:__ @nix_realised_string_free@

    __defined at:__ @nix_api_value.h 732:6@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_free ::
     RIP.Ptr Nix_realised_string
     -- ^ __C declaration:__ @realised_string@
  -> IO ()
nix_realised_string_free =
  hs_bindgen_b57252ed99241b63
