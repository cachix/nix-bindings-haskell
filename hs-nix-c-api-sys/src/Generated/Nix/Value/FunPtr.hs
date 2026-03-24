{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Value.FunPtr
    ( Generated.Nix.Value.FunPtr.nix_alloc_primop
    , Generated.Nix.Value.FunPtr.nix_register_primop
    , Generated.Nix.Value.FunPtr.nix_alloc_value
    , Generated.Nix.Value.FunPtr.nix_value_incref
    , Generated.Nix.Value.FunPtr.nix_value_decref
    , Generated.Nix.Value.FunPtr.nix_get_type
    , Generated.Nix.Value.FunPtr.nix_get_typename
    , Generated.Nix.Value.FunPtr.nix_get_bool
    , Generated.Nix.Value.FunPtr.nix_get_string
    , Generated.Nix.Value.FunPtr.nix_get_path_string
    , Generated.Nix.Value.FunPtr.nix_get_list_size
    , Generated.Nix.Value.FunPtr.nix_get_attrs_size
    , Generated.Nix.Value.FunPtr.nix_get_float
    , Generated.Nix.Value.FunPtr.nix_get_int
    , Generated.Nix.Value.FunPtr.nix_get_external
    , Generated.Nix.Value.FunPtr.nix_get_list_byidx
    , Generated.Nix.Value.FunPtr.nix_get_list_byidx_lazy
    , Generated.Nix.Value.FunPtr.nix_get_attr_byname
    , Generated.Nix.Value.FunPtr.nix_get_attr_byname_lazy
    , Generated.Nix.Value.FunPtr.nix_has_attr_byname
    , Generated.Nix.Value.FunPtr.nix_get_attr_byidx
    , Generated.Nix.Value.FunPtr.nix_get_attr_byidx_lazy
    , Generated.Nix.Value.FunPtr.nix_get_attr_name_byidx
    , Generated.Nix.Value.FunPtr.nix_init_bool
    , Generated.Nix.Value.FunPtr.nix_init_string
    , Generated.Nix.Value.FunPtr.nix_init_path_string
    , Generated.Nix.Value.FunPtr.nix_init_float
    , Generated.Nix.Value.FunPtr.nix_init_int
    , Generated.Nix.Value.FunPtr.nix_init_null
    , Generated.Nix.Value.FunPtr.nix_init_apply
    , Generated.Nix.Value.FunPtr.nix_init_external
    , Generated.Nix.Value.FunPtr.nix_make_list
    , Generated.Nix.Value.FunPtr.nix_make_list_builder
    , Generated.Nix.Value.FunPtr.nix_list_builder_insert
    , Generated.Nix.Value.FunPtr.nix_list_builder_free
    , Generated.Nix.Value.FunPtr.nix_make_attrs
    , Generated.Nix.Value.FunPtr.nix_init_primop
    , Generated.Nix.Value.FunPtr.nix_copy_value
    , Generated.Nix.Value.FunPtr.nix_make_bindings_builder
    , Generated.Nix.Value.FunPtr.nix_bindings_builder_insert
    , Generated.Nix.Value.FunPtr.nix_bindings_builder_free
    , Generated.Nix.Value.FunPtr.nix_string_realise
    , Generated.Nix.Value.FunPtr.nix_realised_string_get_buffer_start
    , Generated.Nix.Value.FunPtr.nix_realised_string_get_buffer_size
    , Generated.Nix.Value.FunPtr.nix_realised_string_get_store_path_count
    , Generated.Nix.Value.FunPtr.nix_realised_string_get_store_path
    , Generated.Nix.Value.FunPtr.nix_realised_string_free
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
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop */"
  , "__attribute__ ((const))"
  , "PrimOp *(*hs_bindgen_d5cb445f596dad5f (void)) ("
  , "  nix_c_context *arg1,"
  , "  PrimOpFun arg2,"
  , "  signed int arg3,"
  , "  char const *arg4,"
  , "  char const **arg5,"
  , "  char const *arg6,"
  , "  void *arg7"
  , ")"
  , "{"
  , "  return &nix_alloc_primop;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_register_primop */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_eb1a22abb8fac8e8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  PrimOp *arg2"
  , ")"
  , "{"
  , "  return &nix_register_primop;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_07284eae8716a74c (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2"
  , ")"
  , "{"
  , "  return &nix_alloc_value;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_incref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_da75e1068767931d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_value_incref;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_decref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8304a7c4a072cbc5 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_value_decref;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_type */"
  , "__attribute__ ((const))"
  , "ValueType (*hs_bindgen_e997bf376bc1f3c1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_type;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_typename */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_2fc47e502b67714b (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_typename;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_bool */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_51729a701a5bdb08 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_bool;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_f698715d5be398f7 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_get_string;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_696094e955747ee8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_path_string;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size */"
  , "__attribute__ ((const))"
  , "unsigned int (*hs_bindgen_3c59325e54c6a135 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_list_size;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size */"
  , "__attribute__ ((const))"
  , "unsigned int (*hs_bindgen_2f933a77e0c9868e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_attrs_size;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_float */"
  , "__attribute__ ((const))"
  , "double (*hs_bindgen_e61ab68de121ec5d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_float;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_int */"
  , "__attribute__ ((const))"
  , "int64_t (*hs_bindgen_5006c1a6effdcb58 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_int;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_external */"
  , "__attribute__ ((const))"
  , "ExternalValue *(*hs_bindgen_171ed3b411e89c13 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_get_external;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_6083abf098cc952a (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_list_byidx;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_ba238568343ed8f6 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_list_byidx_lazy;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_1026490aa39256b4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_byname;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_93c476329d80521c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_byname_lazy;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_f2bdaa187d2dab70 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_has_attr_byname;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_055fd3bd6ec75228 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return &nix_get_attr_byidx;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_d5828fa602a27fc6 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return &nix_get_attr_byidx_lazy;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_7de3861496031e2e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_name_byidx;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_bool */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_40f411066dfb0d38 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  _Bool arg3"
  , ")"
  , "{"
  , "  return &nix_init_bool;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3a862bc248a9588f (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_init_string;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_e99c460945bcee56 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_init_path_string;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_float */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_c9a335d27da124ad (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &nix_init_float;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_int */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_fd34fc8b83ab1c13 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  int64_t arg3"
  , ")"
  , "{"
  , "  return &nix_init_int;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_null */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_b97d7e6d8d6efc82 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_init_null;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_apply */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9d718770ba90eab1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_init_apply;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_external */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_aa807b090bbe6208 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  ExternalValue *arg3"
  , ")"
  , "{"
  , "  return &nix_init_external;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_2af07c3321e37122 (void)) ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_make_list;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder */"
  , "__attribute__ ((const))"
  , "ListBuilder *(*hs_bindgen_e64ade7fa5160e97 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &nix_make_list_builder;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_47abcbe7a818dfc0 (void)) ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  unsigned int arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_list_builder_insert;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_faef731d011e14aa (void)) ("
  , "  ListBuilder *arg1"
  , ")"
  , "{"
  , "  return &nix_list_builder_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_50a641c85f0dc910 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  BindingsBuilder *arg3"
  , ")"
  , "{"
  , "  return &nix_make_attrs;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_primop */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_bd94a9344005f03e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  PrimOp *arg3"
  , ")"
  , "{"
  , "  return &nix_init_primop;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_copy_value */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_37142d3b4864d6b4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value const *arg3"
  , ")"
  , "{"
  , "  return &nix_copy_value;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder */"
  , "__attribute__ ((const))"
  , "BindingsBuilder *(*hs_bindgen_271ccc484648f7dd (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &nix_make_bindings_builder;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_1b494b12e9af8bce (void)) ("
  , "  nix_c_context *arg1,"
  , "  BindingsBuilder *arg2,"
  , "  char const *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_bindings_builder_insert;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f457ee3879c01e29 (void)) ("
  , "  BindingsBuilder *arg1"
  , ")"
  , "{"
  , "  return &nix_bindings_builder_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_string_realise */"
  , "__attribute__ ((const))"
  , "nix_realised_string *(*hs_bindgen_028298424d6a1db5 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  _Bool arg4"
  , ")"
  , "{"
  , "  return &nix_string_realise;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_a075eaeed7ae8e79 (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_buffer_start;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size */"
  , "__attribute__ ((const))"
  , "size_t (*hs_bindgen_f5299747b4401ce8 (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_buffer_size;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count */"
  , "__attribute__ ((const))"
  , "size_t (*hs_bindgen_e7bb9b75cd5d282c (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_store_path_count;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path */"
  , "__attribute__ ((const))"
  , "StorePath const *(*hs_bindgen_2061b9e86c3b1c1f (void)) ("
  , "  nix_realised_string *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_store_path;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_42c19255eebb526c (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_free;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop@
foreign import ccall unsafe "hs_bindgen_d5cb445f596dad5f" hs_bindgen_d5cb445f596dad5f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop@
hs_bindgen_d5cb445f596dad5f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> PrimOpFun -> RIP.CInt -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr PrimOp)))
hs_bindgen_d5cb445f596dad5f =
  RIP.fromFFIType hs_bindgen_d5cb445f596dad5f_base

{-# NOINLINE nix_alloc_primop #-}
{-| __C declaration:__ @nix_alloc_primop@

    __defined at:__ @nix_api_value.h 205:10@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> PrimOpFun -> RIP.CInt -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr PrimOp))
nix_alloc_primop =
  RIP.unsafePerformIO hs_bindgen_d5cb445f596dad5f

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_register_primop@
foreign import ccall unsafe "hs_bindgen_eb1a22abb8fac8e8" hs_bindgen_eb1a22abb8fac8e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_register_primop@
hs_bindgen_eb1a22abb8fac8e8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_eb1a22abb8fac8e8 =
  RIP.fromFFIType hs_bindgen_eb1a22abb8fac8e8_base

{-# NOINLINE nix_register_primop #-}
{-| __C declaration:__ @nix_register_primop@

    __defined at:__ @nix_api_value.h 230:9@

    __exported by:__ @nix_api_value.h@
-}
nix_register_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err)
nix_register_primop =
  RIP.unsafePerformIO hs_bindgen_eb1a22abb8fac8e8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value@
foreign import ccall unsafe "hs_bindgen_07284eae8716a74c" hs_bindgen_07284eae8716a74c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value@
hs_bindgen_07284eae8716a74c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_07284eae8716a74c =
  RIP.fromFFIType hs_bindgen_07284eae8716a74c_base

{-# NOINLINE nix_alloc_value #-}
{-| __C declaration:__ @nix_alloc_value@

    __defined at:__ @nix_api_value.h 242:13@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> IO (RIP.Ptr Nix_value))
nix_alloc_value =
  RIP.unsafePerformIO hs_bindgen_07284eae8716a74c

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_incref@
foreign import ccall unsafe "hs_bindgen_da75e1068767931d" hs_bindgen_da75e1068767931d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_incref@
hs_bindgen_da75e1068767931d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_da75e1068767931d =
  RIP.fromFFIType hs_bindgen_da75e1068767931d_base

{-# NOINLINE nix_value_incref #-}
{-| __C declaration:__ @nix_value_incref@

    __defined at:__ @nix_api_value.h 254:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_incref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_incref =
  RIP.unsafePerformIO hs_bindgen_da75e1068767931d

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_decref@
foreign import ccall unsafe "hs_bindgen_8304a7c4a072cbc5" hs_bindgen_8304a7c4a072cbc5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_value_decref@
hs_bindgen_8304a7c4a072cbc5 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_8304a7c4a072cbc5 =
  RIP.fromFFIType hs_bindgen_8304a7c4a072cbc5_base

{-# NOINLINE nix_value_decref #-}
{-| __C declaration:__ @nix_value_decref@

    __defined at:__ @nix_api_value.h 267:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_decref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_decref =
  RIP.unsafePerformIO hs_bindgen_8304a7c4a072cbc5

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_type@
foreign import ccall unsafe "hs_bindgen_e997bf376bc1f3c1" hs_bindgen_e997bf376bc1f3c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_type@
hs_bindgen_e997bf376bc1f3c1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO ValueType))
hs_bindgen_e997bf376bc1f3c1 =
  RIP.fromFFIType hs_bindgen_e997bf376bc1f3c1_base

{-# NOINLINE nix_get_type #-}
{-| __C declaration:__ @nix_get_type@

    __defined at:__ @nix_api_value.h 275:11@

    __exported by:__ @nix_api_value.h@
-}
nix_get_type :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO ValueType)
nix_get_type =
  RIP.unsafePerformIO hs_bindgen_e997bf376bc1f3c1

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_typename@
foreign import ccall unsafe "hs_bindgen_2fc47e502b67714b" hs_bindgen_2fc47e502b67714b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_typename@
hs_bindgen_2fc47e502b67714b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_2fc47e502b67714b =
  RIP.fromFFIType hs_bindgen_2fc47e502b67714b_base

{-# NOINLINE nix_get_typename #-}
{-| __C declaration:__ @nix_get_typename@

    __defined at:__ @nix_api_value.h 283:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_typename :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_typename =
  RIP.unsafePerformIO hs_bindgen_2fc47e502b67714b

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_bool@
foreign import ccall unsafe "hs_bindgen_51729a701a5bdb08" hs_bindgen_51729a701a5bdb08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_bool@
hs_bindgen_51729a701a5bdb08 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CBool))
hs_bindgen_51729a701a5bdb08 =
  RIP.fromFFIType hs_bindgen_51729a701a5bdb08_base

{-# NOINLINE nix_get_bool #-}
{-| __C declaration:__ @nix_get_bool@

    __defined at:__ @nix_api_value.h 291:6@

    __exported by:__ @nix_api_value.h@
-}
nix_get_bool :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CBool)
nix_get_bool =
  RIP.unsafePerformIO hs_bindgen_51729a701a5bdb08

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_string@
foreign import ccall unsafe "hs_bindgen_f698715d5be398f7" hs_bindgen_f698715d5be398f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_string@
hs_bindgen_f698715d5be398f7 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_f698715d5be398f7 =
  RIP.fromFFIType hs_bindgen_f698715d5be398f7_base

{-# NOINLINE nix_get_string #-}
{-| __C declaration:__ @nix_get_string@

    __defined at:__ @nix_api_value.h 305:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_get_string =
  RIP.unsafePerformIO hs_bindgen_f698715d5be398f7

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string@
foreign import ccall unsafe "hs_bindgen_696094e955747ee8" hs_bindgen_696094e955747ee8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string@
hs_bindgen_696094e955747ee8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_696094e955747ee8 =
  RIP.fromFFIType hs_bindgen_696094e955747ee8_base

{-# NOINLINE nix_get_path_string #-}
{-| __C declaration:__ @nix_get_path_string@

    __defined at:__ @nix_api_value.h 313:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_path_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_path_string =
  RIP.unsafePerformIO hs_bindgen_696094e955747ee8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size@
foreign import ccall unsafe "hs_bindgen_3c59325e54c6a135" hs_bindgen_3c59325e54c6a135_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size@
hs_bindgen_3c59325e54c6a135 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt))
hs_bindgen_3c59325e54c6a135 =
  RIP.fromFFIType hs_bindgen_3c59325e54c6a135_base

{-# NOINLINE nix_get_list_size #-}
{-| __C declaration:__ @nix_get_list_size@

    __defined at:__ @nix_api_value.h 321:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_size :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt)
nix_get_list_size =
  RIP.unsafePerformIO hs_bindgen_3c59325e54c6a135

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size@
foreign import ccall unsafe "hs_bindgen_2f933a77e0c9868e" hs_bindgen_2f933a77e0c9868e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size@
hs_bindgen_2f933a77e0c9868e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt))
hs_bindgen_2f933a77e0c9868e =
  RIP.fromFFIType hs_bindgen_2f933a77e0c9868e_base

{-# NOINLINE nix_get_attrs_size #-}
{-| __C declaration:__ @nix_get_attrs_size@

    __defined at:__ @nix_api_value.h 329:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attrs_size :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt)
nix_get_attrs_size =
  RIP.unsafePerformIO hs_bindgen_2f933a77e0c9868e

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_float@
foreign import ccall unsafe "hs_bindgen_e61ab68de121ec5d" hs_bindgen_e61ab68de121ec5d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_float@
hs_bindgen_e61ab68de121ec5d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CDouble))
hs_bindgen_e61ab68de121ec5d =
  RIP.fromFFIType hs_bindgen_e61ab68de121ec5d_base

{-# NOINLINE nix_get_float #-}
{-| __C declaration:__ @nix_get_float@

    __defined at:__ @nix_api_value.h 337:8@

    __exported by:__ @nix_api_value.h@
-}
nix_get_float :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CDouble)
nix_get_float =
  RIP.unsafePerformIO hs_bindgen_e61ab68de121ec5d

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_int@
foreign import ccall unsafe "hs_bindgen_5006c1a6effdcb58" hs_bindgen_5006c1a6effdcb58_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_int@
hs_bindgen_5006c1a6effdcb58 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO HsBindgen.Runtime.LibC.Int64))
hs_bindgen_5006c1a6effdcb58 =
  RIP.fromFFIType hs_bindgen_5006c1a6effdcb58_base

{-# NOINLINE nix_get_int #-}
{-| __C declaration:__ @nix_get_int@

    __defined at:__ @nix_api_value.h 345:9@

    __exported by:__ @nix_api_value.h@
-}
nix_get_int :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO HsBindgen.Runtime.LibC.Int64)
nix_get_int =
  RIP.unsafePerformIO hs_bindgen_5006c1a6effdcb58

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_external@
foreign import ccall unsafe "hs_bindgen_171ed3b411e89c13" hs_bindgen_171ed3b411e89c13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_external@
hs_bindgen_171ed3b411e89c13 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO (RIP.Ptr ExternalValue)))
hs_bindgen_171ed3b411e89c13 =
  RIP.fromFFIType hs_bindgen_171ed3b411e89c13_base

{-# NOINLINE nix_get_external #-}
{-| __C declaration:__ @nix_get_external@

    __defined at:__ @nix_api_value.h 354:17@

    __exported by:__ @nix_api_value.h@
-}
nix_get_external :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO (RIP.Ptr ExternalValue))
nix_get_external =
  RIP.unsafePerformIO hs_bindgen_171ed3b411e89c13

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx@
foreign import ccall unsafe "hs_bindgen_6083abf098cc952a" hs_bindgen_6083abf098cc952a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx@
hs_bindgen_6083abf098cc952a :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value)))
hs_bindgen_6083abf098cc952a =
  RIP.fromFFIType hs_bindgen_6083abf098cc952a_base

{-# NOINLINE nix_get_list_byidx #-}
{-| __C declaration:__ @nix_get_list_byidx@

    __defined at:__ @nix_api_value.h 366:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value))
nix_get_list_byidx =
  RIP.unsafePerformIO hs_bindgen_6083abf098cc952a

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_ba238568343ed8f6" hs_bindgen_ba238568343ed8f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy@
hs_bindgen_ba238568343ed8f6 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value)))
hs_bindgen_ba238568343ed8f6 =
  RIP.fromFFIType hs_bindgen_ba238568343ed8f6_base

{-# NOINLINE nix_get_list_byidx_lazy #-}
{-| __C declaration:__ @nix_get_list_byidx_lazy@

    __defined at:__ @nix_api_value.h 382:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value))
nix_get_list_byidx_lazy =
  RIP.unsafePerformIO hs_bindgen_ba238568343ed8f6

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname@
foreign import ccall unsafe "hs_bindgen_1026490aa39256b4" hs_bindgen_1026490aa39256b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname@
hs_bindgen_1026490aa39256b4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_1026490aa39256b4 =
  RIP.fromFFIType hs_bindgen_1026490aa39256b4_base

{-# NOINLINE nix_get_attr_byname #-}
{-| __C declaration:__ @nix_get_attr_byname@

    __defined at:__ @nix_api_value.h 394:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byname =
  RIP.unsafePerformIO hs_bindgen_1026490aa39256b4

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy@
foreign import ccall unsafe "hs_bindgen_93c476329d80521c" hs_bindgen_93c476329d80521c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy@
hs_bindgen_93c476329d80521c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_93c476329d80521c =
  RIP.fromFFIType hs_bindgen_93c476329d80521c_base

{-# NOINLINE nix_get_attr_byname_lazy #-}
{-| __C declaration:__ @nix_get_attr_byname_lazy@

    __defined at:__ @nix_api_value.h 410:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byname_lazy =
  RIP.unsafePerformIO hs_bindgen_93c476329d80521c

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname@
foreign import ccall unsafe "hs_bindgen_f2bdaa187d2dab70" hs_bindgen_f2bdaa187d2dab70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname@
hs_bindgen_f2bdaa187d2dab70 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO RIP.CBool))
hs_bindgen_f2bdaa187d2dab70 =
  RIP.fromFFIType hs_bindgen_f2bdaa187d2dab70_base

{-# NOINLINE nix_has_attr_byname #-}
{-| __C declaration:__ @nix_has_attr_byname@

    __defined at:__ @nix_api_value.h 420:6@

    __exported by:__ @nix_api_value.h@
-}
nix_has_attr_byname :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO RIP.CBool)
nix_has_attr_byname =
  RIP.unsafePerformIO hs_bindgen_f2bdaa187d2dab70

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx@
foreign import ccall unsafe "hs_bindgen_055fd3bd6ec75228" hs_bindgen_055fd3bd6ec75228_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx@
hs_bindgen_055fd3bd6ec75228 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_055fd3bd6ec75228 =
  RIP.fromFFIType hs_bindgen_055fd3bd6ec75228_base

{-# NOINLINE nix_get_attr_byidx #-}
{-| __C declaration:__ @nix_get_attr_byidx@

    __defined at:__ @nix_api_value.h 446:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byidx =
  RIP.unsafePerformIO hs_bindgen_055fd3bd6ec75228

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_d5828fa602a27fc6" hs_bindgen_d5828fa602a27fc6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy@
hs_bindgen_d5828fa602a27fc6 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_d5828fa602a27fc6 =
  RIP.fromFFIType hs_bindgen_d5828fa602a27fc6_base

{-# NOINLINE nix_get_attr_byidx_lazy #-}
{-| __C declaration:__ @nix_get_attr_byidx_lazy@

    __defined at:__ @nix_api_value.h 474:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byidx_lazy =
  RIP.unsafePerformIO hs_bindgen_d5828fa602a27fc6

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx@
foreign import ccall unsafe "hs_bindgen_7de3861496031e2e" hs_bindgen_7de3861496031e2e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx@
hs_bindgen_7de3861496031e2e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_7de3861496031e2e =
  RIP.fromFFIType hs_bindgen_7de3861496031e2e_base

{-# NOINLINE nix_get_attr_name_byidx #-}
{-| __C declaration:__ @nix_get_attr_name_byidx@

    __defined at:__ @nix_api_value.h 498:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_name_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_attr_name_byidx =
  RIP.unsafePerformIO hs_bindgen_7de3861496031e2e

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_bool@
foreign import ccall unsafe "hs_bindgen_40f411066dfb0d38" hs_bindgen_40f411066dfb0d38_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_bool@
hs_bindgen_40f411066dfb0d38 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_40f411066dfb0d38 =
  RIP.fromFFIType hs_bindgen_40f411066dfb0d38_base

{-# NOINLINE nix_init_bool #-}
{-| __C declaration:__ @nix_init_bool@

    __defined at:__ @nix_api_value.h 515:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_bool :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO Generated.Nix.Util.Nix_err)
nix_init_bool =
  RIP.unsafePerformIO hs_bindgen_40f411066dfb0d38

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_string@
foreign import ccall unsafe "hs_bindgen_3a862bc248a9588f" hs_bindgen_3a862bc248a9588f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_string@
hs_bindgen_3a862bc248a9588f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3a862bc248a9588f =
  RIP.fromFFIType hs_bindgen_3a862bc248a9588f_base

{-# NOINLINE nix_init_string #-}
{-| __C declaration:__ @nix_init_string@

    __defined at:__ @nix_api_value.h 524:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_init_string =
  RIP.unsafePerformIO hs_bindgen_3a862bc248a9588f

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string@
foreign import ccall unsafe "hs_bindgen_e99c460945bcee56" hs_bindgen_e99c460945bcee56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string@
hs_bindgen_e99c460945bcee56 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_e99c460945bcee56 =
  RIP.fromFFIType hs_bindgen_e99c460945bcee56_base

{-# NOINLINE nix_init_path_string #-}
{-| __C declaration:__ @nix_init_path_string@

    __defined at:__ @nix_api_value.h 533:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_path_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_init_path_string =
  RIP.unsafePerformIO hs_bindgen_e99c460945bcee56

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_float@
foreign import ccall unsafe "hs_bindgen_c9a335d27da124ad" hs_bindgen_c9a335d27da124ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_float@
hs_bindgen_c9a335d27da124ad :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CDouble -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_c9a335d27da124ad =
  RIP.fromFFIType hs_bindgen_c9a335d27da124ad_base

{-# NOINLINE nix_init_float #-}
{-| __C declaration:__ @nix_init_float@

    __defined at:__ @nix_api_value.h 542:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_float :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CDouble -> IO Generated.Nix.Util.Nix_err)
nix_init_float =
  RIP.unsafePerformIO hs_bindgen_c9a335d27da124ad

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_int@
foreign import ccall unsafe "hs_bindgen_fd34fc8b83ab1c13" hs_bindgen_fd34fc8b83ab1c13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_int@
hs_bindgen_fd34fc8b83ab1c13 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.Int64 -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_fd34fc8b83ab1c13 =
  RIP.fromFFIType hs_bindgen_fd34fc8b83ab1c13_base

{-# NOINLINE nix_init_int #-}
{-| __C declaration:__ @nix_init_int@

    __defined at:__ @nix_api_value.h 552:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_int :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.Int64 -> IO Generated.Nix.Util.Nix_err)
nix_init_int =
  RIP.unsafePerformIO hs_bindgen_fd34fc8b83ab1c13

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_null@
foreign import ccall unsafe "hs_bindgen_b97d7e6d8d6efc82" hs_bindgen_b97d7e6d8d6efc82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_null@
hs_bindgen_b97d7e6d8d6efc82 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_b97d7e6d8d6efc82 =
  RIP.fromFFIType hs_bindgen_b97d7e6d8d6efc82_base

{-# NOINLINE nix_init_null #-}
{-| __C declaration:__ @nix_init_null@

    __defined at:__ @nix_api_value.h 559:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_null :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_init_null =
  RIP.unsafePerformIO hs_bindgen_b97d7e6d8d6efc82

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_apply@
foreign import ccall unsafe "hs_bindgen_9d718770ba90eab1" hs_bindgen_9d718770ba90eab1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_apply@
hs_bindgen_9d718770ba90eab1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9d718770ba90eab1 =
  RIP.fromFFIType hs_bindgen_9d718770ba90eab1_base

{-# NOINLINE nix_init_apply #-}
{-| __C declaration:__ @nix_init_apply@

    __defined at:__ @nix_api_value.h 576:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_apply :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_init_apply =
  RIP.unsafePerformIO hs_bindgen_9d718770ba90eab1

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_external@
foreign import ccall unsafe "hs_bindgen_aa807b090bbe6208" hs_bindgen_aa807b090bbe6208_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_external@
hs_bindgen_aa807b090bbe6208 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr ExternalValue) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_aa807b090bbe6208 =
  RIP.fromFFIType hs_bindgen_aa807b090bbe6208_base

{-# NOINLINE nix_init_external #-}
{-| __C declaration:__ @nix_init_external@

    __defined at:__ @nix_api_value.h 585:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_external :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr ExternalValue) -> IO Generated.Nix.Util.Nix_err)
nix_init_external =
  RIP.unsafePerformIO hs_bindgen_aa807b090bbe6208

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list@
foreign import ccall unsafe "hs_bindgen_2af07c3321e37122" hs_bindgen_2af07c3321e37122_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list@
hs_bindgen_2af07c3321e37122 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_2af07c3321e37122 =
  RIP.fromFFIType hs_bindgen_2af07c3321e37122_base

{-# NOINLINE nix_make_list #-}
{-| __C declaration:__ @nix_make_list@

    __defined at:__ @nix_api_value.h 599:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_make_list =
  RIP.unsafePerformIO hs_bindgen_2af07c3321e37122

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder@
foreign import ccall unsafe "hs_bindgen_e64ade7fa5160e97" hs_bindgen_e64ade7fa5160e97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder@
hs_bindgen_e64ade7fa5160e97 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr ListBuilder)))
hs_bindgen_e64ade7fa5160e97 =
  RIP.fromFFIType hs_bindgen_e64ade7fa5160e97_base

{-# NOINLINE nix_make_list_builder #-}
{-| __C declaration:__ @nix_make_list_builder@

    __defined at:__ @nix_api_value.h 608:15@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr ListBuilder))
nix_make_list_builder =
  RIP.unsafePerformIO hs_bindgen_e64ade7fa5160e97

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert@
foreign import ccall unsafe "hs_bindgen_47abcbe7a818dfc0" hs_bindgen_47abcbe7a818dfc0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert@
hs_bindgen_47abcbe7a818dfc0 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> RIP.CUInt -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_47abcbe7a818dfc0 =
  RIP.fromFFIType hs_bindgen_47abcbe7a818dfc0_base

{-# NOINLINE nix_list_builder_insert #-}
{-| __C declaration:__ @nix_list_builder_insert@

    __defined at:__ @nix_api_value.h 618:1@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_insert :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> RIP.CUInt -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_list_builder_insert =
  RIP.unsafePerformIO hs_bindgen_47abcbe7a818dfc0

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free@
foreign import ccall unsafe "hs_bindgen_faef731d011e14aa" hs_bindgen_faef731d011e14aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free@
hs_bindgen_faef731d011e14aa :: IO (RIP.FunPtr ((RIP.Ptr ListBuilder) -> IO ()))
hs_bindgen_faef731d011e14aa =
  RIP.fromFFIType hs_bindgen_faef731d011e14aa_base

{-# NOINLINE nix_list_builder_free #-}
{-| __C declaration:__ @nix_list_builder_free@

    __defined at:__ @nix_api_value.h 625:6@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_free :: RIP.FunPtr ((RIP.Ptr ListBuilder) -> IO ())
nix_list_builder_free =
  RIP.unsafePerformIO hs_bindgen_faef731d011e14aa

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs@
foreign import ccall unsafe "hs_bindgen_50a641c85f0dc910" hs_bindgen_50a641c85f0dc910_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs@
hs_bindgen_50a641c85f0dc910 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr BindingsBuilder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_50a641c85f0dc910 =
  RIP.fromFFIType hs_bindgen_50a641c85f0dc910_base

{-# NOINLINE nix_make_attrs #-}
{-| __C declaration:__ @nix_make_attrs@

    __defined at:__ @nix_api_value.h 639:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_attrs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr BindingsBuilder) -> IO Generated.Nix.Util.Nix_err)
nix_make_attrs =
  RIP.unsafePerformIO hs_bindgen_50a641c85f0dc910

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_primop@
foreign import ccall unsafe "hs_bindgen_bd94a9344005f03e" hs_bindgen_bd94a9344005f03e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_init_primop@
hs_bindgen_bd94a9344005f03e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_bd94a9344005f03e =
  RIP.fromFFIType hs_bindgen_bd94a9344005f03e_base

{-# NOINLINE nix_init_primop #-}
{-| __C declaration:__ @nix_init_primop@

    __defined at:__ @nix_api_value.h 649:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err)
nix_init_primop =
  RIP.unsafePerformIO hs_bindgen_bd94a9344005f03e

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_copy_value@
foreign import ccall unsafe "hs_bindgen_37142d3b4864d6b4" hs_bindgen_37142d3b4864d6b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_copy_value@
hs_bindgen_37142d3b4864d6b4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_37142d3b4864d6b4 =
  RIP.fromFFIType hs_bindgen_37142d3b4864d6b4_base

{-# NOINLINE nix_copy_value #-}
{-| __C declaration:__ @nix_copy_value@

    __defined at:__ @nix_api_value.h 657:9@

    __exported by:__ @nix_api_value.h@
-}
nix_copy_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_copy_value =
  RIP.unsafePerformIO hs_bindgen_37142d3b4864d6b4

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder@
foreign import ccall unsafe "hs_bindgen_271ccc484648f7dd" hs_bindgen_271ccc484648f7dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder@
hs_bindgen_271ccc484648f7dd :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr BindingsBuilder)))
hs_bindgen_271ccc484648f7dd =
  RIP.fromFFIType hs_bindgen_271ccc484648f7dd_base

{-# NOINLINE nix_make_bindings_builder #-}
{-| __C declaration:__ @nix_make_bindings_builder@

    __defined at:__ @nix_api_value.h 666:19@

    __exported by:__ @nix_api_value.h@
-}
nix_make_bindings_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr BindingsBuilder))
nix_make_bindings_builder =
  RIP.unsafePerformIO hs_bindgen_271ccc484648f7dd

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert@
foreign import ccall unsafe "hs_bindgen_1b494b12e9af8bce" hs_bindgen_1b494b12e9af8bce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert@
hs_bindgen_1b494b12e9af8bce :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr BindingsBuilder) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_1b494b12e9af8bce =
  RIP.fromFFIType hs_bindgen_1b494b12e9af8bce_base

{-# NOINLINE nix_bindings_builder_insert #-}
{-| __C declaration:__ @nix_bindings_builder_insert@

    __defined at:__ @nix_api_value.h 676:1@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_insert :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr BindingsBuilder) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_bindings_builder_insert =
  RIP.unsafePerformIO hs_bindgen_1b494b12e9af8bce

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free@
foreign import ccall unsafe "hs_bindgen_f457ee3879c01e29" hs_bindgen_f457ee3879c01e29_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free@
hs_bindgen_f457ee3879c01e29 :: IO (RIP.FunPtr ((RIP.Ptr BindingsBuilder) -> IO ()))
hs_bindgen_f457ee3879c01e29 =
  RIP.fromFFIType hs_bindgen_f457ee3879c01e29_base

{-# NOINLINE nix_bindings_builder_free #-}
{-| __C declaration:__ @nix_bindings_builder_free@

    __defined at:__ @nix_api_value.h 683:6@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_free :: RIP.FunPtr ((RIP.Ptr BindingsBuilder) -> IO ())
nix_bindings_builder_free =
  RIP.unsafePerformIO hs_bindgen_f457ee3879c01e29

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_string_realise@
foreign import ccall unsafe "hs_bindgen_028298424d6a1db5" hs_bindgen_028298424d6a1db5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_string_realise@
hs_bindgen_028298424d6a1db5 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO (RIP.Ptr Nix_realised_string)))
hs_bindgen_028298424d6a1db5 =
  RIP.fromFFIType hs_bindgen_028298424d6a1db5_base

{-# NOINLINE nix_string_realise #-}
{-| __C declaration:__ @nix_string_realise@

    __defined at:__ @nix_api_value.h 702:23@

    __exported by:__ @nix_api_value.h@
-}
nix_string_realise :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO (RIP.Ptr Nix_realised_string))
nix_string_realise =
  RIP.unsafePerformIO hs_bindgen_028298424d6a1db5

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start@
foreign import ccall unsafe "hs_bindgen_a075eaeed7ae8e79" hs_bindgen_a075eaeed7ae8e79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start@
hs_bindgen_a075eaeed7ae8e79 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_a075eaeed7ae8e79 =
  RIP.fromFFIType hs_bindgen_a075eaeed7ae8e79_base

{-# NOINLINE nix_realised_string_get_buffer_start #-}
{-| __C declaration:__ @nix_realised_string_get_buffer_start@

    __defined at:__ @nix_api_value.h 708:14@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_start :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO (PtrConst.PtrConst RIP.CChar))
nix_realised_string_get_buffer_start =
  RIP.unsafePerformIO hs_bindgen_a075eaeed7ae8e79

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size@
foreign import ccall unsafe "hs_bindgen_f5299747b4401ce8" hs_bindgen_f5299747b4401ce8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size@
hs_bindgen_f5299747b4401ce8 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize))
hs_bindgen_f5299747b4401ce8 =
  RIP.fromFFIType hs_bindgen_f5299747b4401ce8_base

{-# NOINLINE nix_realised_string_get_buffer_size #-}
{-| __C declaration:__ @nix_realised_string_get_buffer_size@

    __defined at:__ @nix_api_value.h 714:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_size :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize)
nix_realised_string_get_buffer_size =
  RIP.unsafePerformIO hs_bindgen_f5299747b4401ce8

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count@
foreign import ccall unsafe "hs_bindgen_e7bb9b75cd5d282c" hs_bindgen_e7bb9b75cd5d282c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count@
hs_bindgen_e7bb9b75cd5d282c :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize))
hs_bindgen_e7bb9b75cd5d282c =
  RIP.fromFFIType hs_bindgen_e7bb9b75cd5d282c_base

{-# NOINLINE nix_realised_string_get_store_path_count #-}
{-| __C declaration:__ @nix_realised_string_get_store_path_count@

    __defined at:__ @nix_api_value.h 720:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path_count :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize)
nix_realised_string_get_store_path_count =
  RIP.unsafePerformIO hs_bindgen_e7bb9b75cd5d282c

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path@
foreign import ccall unsafe "hs_bindgen_2061b9e86c3b1c1f" hs_bindgen_2061b9e86c3b1c1f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path@
hs_bindgen_2061b9e86c3b1c1f :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> HsBindgen.Runtime.LibC.CSize -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)))
hs_bindgen_2061b9e86c3b1c1f =
  RIP.fromFFIType hs_bindgen_2061b9e86c3b1c1f_base

{-# NOINLINE nix_realised_string_get_store_path #-}
{-| __C declaration:__ @nix_realised_string_get_store_path@

    __defined at:__ @nix_api_value.h 727:19@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> HsBindgen.Runtime.LibC.CSize -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath))
nix_realised_string_get_store_path =
  RIP.unsafePerformIO hs_bindgen_2061b9e86c3b1c1f

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free@
foreign import ccall unsafe "hs_bindgen_42c19255eebb526c" hs_bindgen_42c19255eebb526c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free@
hs_bindgen_42c19255eebb526c :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO ()))
hs_bindgen_42c19255eebb526c =
  RIP.fromFFIType hs_bindgen_42c19255eebb526c_base

{-# NOINLINE nix_realised_string_free #-}
{-| __C declaration:__ @nix_realised_string_free@

    __defined at:__ @nix_api_value.h 732:6@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_free :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO ())
nix_realised_string_free =
  RIP.unsafePerformIO hs_bindgen_42c19255eebb526c
