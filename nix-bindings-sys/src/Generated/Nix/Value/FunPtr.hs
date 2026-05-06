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
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop */"
  , "__attribute__ ((const))"
  , "PrimOp *(*hs_bindgen_390a4912e2b7f4dc (void)) ("
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
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_register_primop */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_fa2304a4131fae68 (void)) ("
  , "  nix_c_context *arg1,"
  , "  PrimOp *arg2"
  , ")"
  , "{"
  , "  return &nix_register_primop;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_7ab714d9c7047955 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2"
  , ")"
  , "{"
  , "  return &nix_alloc_value;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_incref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6d48448890befbfe (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_value_incref;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_decref */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_a1c5dd905aa2b796 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_value_decref;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_type */"
  , "__attribute__ ((const))"
  , "ValueType (*hs_bindgen_784750e02512ae19 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_type;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_typename */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_1e9093ccf4a595e9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_typename;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_bool */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_c20d323955af83b8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_bool;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_c60e78b0ae3812ee (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_get_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_7246cf8c03f0b1b1 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_path_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size */"
  , "__attribute__ ((const))"
  , "unsigned int (*hs_bindgen_5d2d7418a2553410 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_list_size;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size */"
  , "__attribute__ ((const))"
  , "unsigned int (*hs_bindgen_60260cee22e070c4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_attrs_size;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_float */"
  , "__attribute__ ((const))"
  , "double (*hs_bindgen_2e5cddbef84ff69d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_float;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_int */"
  , "__attribute__ ((const))"
  , "int64_t (*hs_bindgen_517c988a1801b01f (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2"
  , ")"
  , "{"
  , "  return &nix_get_int;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_external */"
  , "__attribute__ ((const))"
  , "ExternalValue *(*hs_bindgen_58ab9c8ec918c71c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_get_external;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_6c662c1a2601a0b3 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_list_byidx;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_c4804ecdce0893ed (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_list_byidx_lazy;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_e015ccaa63bb3831 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_byname;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_aa1793ee5721f5f8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_byname_lazy;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname */"
  , "__attribute__ ((const))"
  , "_Bool (*hs_bindgen_41783a29f91923b4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value const *arg2,"
  , "  EvalState *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_has_attr_byname;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_2696599bda292c70 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return &nix_get_attr_byidx;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy */"
  , "__attribute__ ((const))"
  , "nix_value *(*hs_bindgen_fc5962c83868f7ff (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4,"
  , "  char const **arg5"
  , ")"
  , "{"
  , "  return &nix_get_attr_byidx_lazy;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_f6fc91ad15d85676 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  EvalState *arg3,"
  , "  unsigned int arg4"
  , ")"
  , "{"
  , "  return &nix_get_attr_name_byidx;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_bool */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_e5da051fbb7825a3 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  _Bool arg3"
  , ")"
  , "{"
  , "  return &nix_init_bool;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_4fe967143b635cba (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_init_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8416a1a6e8e912ec (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &nix_init_path_string;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_float */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_78399f7d997ad77c (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &nix_init_float;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_int */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_fc7f15917937ba8e (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  int64_t arg3"
  , ")"
  , "{"
  , "  return &nix_init_int;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_null */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9d5f35f1421e3f7b (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2"
  , ")"
  , "{"
  , "  return &nix_init_null;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_apply */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_7109b10732e0b207 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_init_apply;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_external */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_011f24d969f3801d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  ExternalValue *arg3"
  , ")"
  , "{"
  , "  return &nix_init_external;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_9901505dbdfed6dc (void)) ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  nix_value *arg3"
  , ")"
  , "{"
  , "  return &nix_make_list;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder */"
  , "__attribute__ ((const))"
  , "ListBuilder *(*hs_bindgen_b39407789a1562e6 (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &nix_make_list_builder;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_ed7e25b2e7930ad9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  ListBuilder *arg2,"
  , "  unsigned int arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_list_builder_insert;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2f03d153c2878285 (void)) ("
  , "  ListBuilder *arg1"
  , ")"
  , "{"
  , "  return &nix_list_builder_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_89324a6de9c74ce3 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  BindingsBuilder *arg3"
  , ")"
  , "{"
  , "  return &nix_make_attrs;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_primop */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_b8e6aa4b438b5a34 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  PrimOp *arg3"
  , ")"
  , "{"
  , "  return &nix_init_primop;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_copy_value */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3f323d02e39b83dd (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_value *arg2,"
  , "  nix_value const *arg3"
  , ")"
  , "{"
  , "  return &nix_copy_value;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder */"
  , "__attribute__ ((const))"
  , "BindingsBuilder *(*hs_bindgen_9c506a54baa925be (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &nix_make_bindings_builder;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_543072ca4072697e (void)) ("
  , "  nix_c_context *arg1,"
  , "  BindingsBuilder *arg2,"
  , "  char const *arg3,"
  , "  nix_value *arg4"
  , ")"
  , "{"
  , "  return &nix_bindings_builder_insert;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_32ed5f7ad5b77ea3 (void)) ("
  , "  BindingsBuilder *arg1"
  , ")"
  , "{"
  , "  return &nix_bindings_builder_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_string_realise */"
  , "__attribute__ ((const))"
  , "nix_realised_string *(*hs_bindgen_e6264d01f9fb53da (void)) ("
  , "  nix_c_context *arg1,"
  , "  EvalState *arg2,"
  , "  nix_value *arg3,"
  , "  _Bool arg4"
  , ")"
  , "{"
  , "  return &nix_string_realise;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_ee939a53ba0ed7b2 (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_buffer_start;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size */"
  , "__attribute__ ((const))"
  , "size_t (*hs_bindgen_c9a4b8a2813300ec (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_buffer_size;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count */"
  , "__attribute__ ((const))"
  , "size_t (*hs_bindgen_f5ec54d23473821f (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_store_path_count;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path */"
  , "__attribute__ ((const))"
  , "StorePath const *(*hs_bindgen_84eab4b432506d83 (void)) ("
  , "  nix_realised_string *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &nix_realised_string_get_store_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5fe04f32bba027a5 (void)) ("
  , "  nix_realised_string *arg1"
  , ")"
  , "{"
  , "  return &nix_realised_string_free;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop@
foreign import ccall unsafe "hs_bindgen_390a4912e2b7f4dc" hs_bindgen_390a4912e2b7f4dc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_primop@
hs_bindgen_390a4912e2b7f4dc :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> PrimOpFun -> RIP.CInt -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr PrimOp)))
hs_bindgen_390a4912e2b7f4dc =
  RIP.fromFFIType hs_bindgen_390a4912e2b7f4dc_base

{-# NOINLINE nix_alloc_primop #-}
{-| __C declaration:__ @nix_alloc_primop@

    __defined at:__ @nix_api_value.h 205:10@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> PrimOpFun -> RIP.CInt -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr RIP.Void) -> IO (RIP.Ptr PrimOp))
nix_alloc_primop =
  RIP.unsafePerformIO hs_bindgen_390a4912e2b7f4dc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_register_primop@
foreign import ccall unsafe "hs_bindgen_fa2304a4131fae68" hs_bindgen_fa2304a4131fae68_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_register_primop@
hs_bindgen_fa2304a4131fae68 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_fa2304a4131fae68 =
  RIP.fromFFIType hs_bindgen_fa2304a4131fae68_base

{-# NOINLINE nix_register_primop #-}
{-| __C declaration:__ @nix_register_primop@

    __defined at:__ @nix_api_value.h 230:9@

    __exported by:__ @nix_api_value.h@
-}
nix_register_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err)
nix_register_primop =
  RIP.unsafePerformIO hs_bindgen_fa2304a4131fae68

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value@
foreign import ccall unsafe "hs_bindgen_7ab714d9c7047955" hs_bindgen_7ab714d9c7047955_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_alloc_value@
hs_bindgen_7ab714d9c7047955 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_7ab714d9c7047955 =
  RIP.fromFFIType hs_bindgen_7ab714d9c7047955_base

{-# NOINLINE nix_alloc_value #-}
{-| __C declaration:__ @nix_alloc_value@

    __defined at:__ @nix_api_value.h 242:13@

    __exported by:__ @nix_api_value.h@
-}
nix_alloc_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> IO (RIP.Ptr Nix_value))
nix_alloc_value =
  RIP.unsafePerformIO hs_bindgen_7ab714d9c7047955

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_incref@
foreign import ccall unsafe "hs_bindgen_6d48448890befbfe" hs_bindgen_6d48448890befbfe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_incref@
hs_bindgen_6d48448890befbfe :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6d48448890befbfe =
  RIP.fromFFIType hs_bindgen_6d48448890befbfe_base

{-# NOINLINE nix_value_incref #-}
{-| __C declaration:__ @nix_value_incref@

    __defined at:__ @nix_api_value.h 254:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_incref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_incref =
  RIP.unsafePerformIO hs_bindgen_6d48448890befbfe

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_decref@
foreign import ccall unsafe "hs_bindgen_a1c5dd905aa2b796" hs_bindgen_a1c5dd905aa2b796_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_value_decref@
hs_bindgen_a1c5dd905aa2b796 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_a1c5dd905aa2b796 =
  RIP.fromFFIType hs_bindgen_a1c5dd905aa2b796_base

{-# NOINLINE nix_value_decref #-}
{-| __C declaration:__ @nix_value_decref@

    __defined at:__ @nix_api_value.h 267:9@

    __exported by:__ @nix_api_value.h@
-}
nix_value_decref :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_value_decref =
  RIP.unsafePerformIO hs_bindgen_a1c5dd905aa2b796

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_type@
foreign import ccall unsafe "hs_bindgen_784750e02512ae19" hs_bindgen_784750e02512ae19_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_type@
hs_bindgen_784750e02512ae19 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO ValueType))
hs_bindgen_784750e02512ae19 =
  RIP.fromFFIType hs_bindgen_784750e02512ae19_base

{-# NOINLINE nix_get_type #-}
{-| __C declaration:__ @nix_get_type@

    __defined at:__ @nix_api_value.h 275:11@

    __exported by:__ @nix_api_value.h@
-}
nix_get_type :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO ValueType)
nix_get_type =
  RIP.unsafePerformIO hs_bindgen_784750e02512ae19

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_typename@
foreign import ccall unsafe "hs_bindgen_1e9093ccf4a595e9" hs_bindgen_1e9093ccf4a595e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_typename@
hs_bindgen_1e9093ccf4a595e9 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_1e9093ccf4a595e9 =
  RIP.fromFFIType hs_bindgen_1e9093ccf4a595e9_base

{-# NOINLINE nix_get_typename #-}
{-| __C declaration:__ @nix_get_typename@

    __defined at:__ @nix_api_value.h 283:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_typename :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_typename =
  RIP.unsafePerformIO hs_bindgen_1e9093ccf4a595e9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_bool@
foreign import ccall unsafe "hs_bindgen_c20d323955af83b8" hs_bindgen_c20d323955af83b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_bool@
hs_bindgen_c20d323955af83b8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CBool))
hs_bindgen_c20d323955af83b8 =
  RIP.fromFFIType hs_bindgen_c20d323955af83b8_base

{-# NOINLINE nix_get_bool #-}
{-| __C declaration:__ @nix_get_bool@

    __defined at:__ @nix_api_value.h 291:6@

    __exported by:__ @nix_api_value.h@
-}
nix_get_bool :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CBool)
nix_get_bool =
  RIP.unsafePerformIO hs_bindgen_c20d323955af83b8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_string@
foreign import ccall unsafe "hs_bindgen_c60e78b0ae3812ee" hs_bindgen_c60e78b0ae3812ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_string@
hs_bindgen_c60e78b0ae3812ee :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_c60e78b0ae3812ee =
  RIP.fromFFIType hs_bindgen_c60e78b0ae3812ee_base

{-# NOINLINE nix_get_string #-}
{-| __C declaration:__ @nix_get_string@

    __defined at:__ @nix_api_value.h 305:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_get_string =
  RIP.unsafePerformIO hs_bindgen_c60e78b0ae3812ee

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string@
foreign import ccall unsafe "hs_bindgen_7246cf8c03f0b1b1" hs_bindgen_7246cf8c03f0b1b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_path_string@
hs_bindgen_7246cf8c03f0b1b1 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_7246cf8c03f0b1b1 =
  RIP.fromFFIType hs_bindgen_7246cf8c03f0b1b1_base

{-# NOINLINE nix_get_path_string #-}
{-| __C declaration:__ @nix_get_path_string@

    __defined at:__ @nix_api_value.h 313:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_path_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_path_string =
  RIP.unsafePerformIO hs_bindgen_7246cf8c03f0b1b1

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size@
foreign import ccall unsafe "hs_bindgen_5d2d7418a2553410" hs_bindgen_5d2d7418a2553410_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_size@
hs_bindgen_5d2d7418a2553410 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt))
hs_bindgen_5d2d7418a2553410 =
  RIP.fromFFIType hs_bindgen_5d2d7418a2553410_base

{-# NOINLINE nix_get_list_size #-}
{-| __C declaration:__ @nix_get_list_size@

    __defined at:__ @nix_api_value.h 321:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_size :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt)
nix_get_list_size =
  RIP.unsafePerformIO hs_bindgen_5d2d7418a2553410

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size@
foreign import ccall unsafe "hs_bindgen_60260cee22e070c4" hs_bindgen_60260cee22e070c4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attrs_size@
hs_bindgen_60260cee22e070c4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt))
hs_bindgen_60260cee22e070c4 =
  RIP.fromFFIType hs_bindgen_60260cee22e070c4_base

{-# NOINLINE nix_get_attrs_size #-}
{-| __C declaration:__ @nix_get_attrs_size@

    __defined at:__ @nix_api_value.h 329:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attrs_size :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CUInt)
nix_get_attrs_size =
  RIP.unsafePerformIO hs_bindgen_60260cee22e070c4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_float@
foreign import ccall unsafe "hs_bindgen_2e5cddbef84ff69d" hs_bindgen_2e5cddbef84ff69d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_float@
hs_bindgen_2e5cddbef84ff69d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CDouble))
hs_bindgen_2e5cddbef84ff69d =
  RIP.fromFFIType hs_bindgen_2e5cddbef84ff69d_base

{-# NOINLINE nix_get_float #-}
{-| __C declaration:__ @nix_get_float@

    __defined at:__ @nix_api_value.h 337:8@

    __exported by:__ @nix_api_value.h@
-}
nix_get_float :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO RIP.CDouble)
nix_get_float =
  RIP.unsafePerformIO hs_bindgen_2e5cddbef84ff69d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_int@
foreign import ccall unsafe "hs_bindgen_517c988a1801b01f" hs_bindgen_517c988a1801b01f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_int@
hs_bindgen_517c988a1801b01f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO HsBindgen.Runtime.LibC.Int64))
hs_bindgen_517c988a1801b01f =
  RIP.fromFFIType hs_bindgen_517c988a1801b01f_base

{-# NOINLINE nix_get_int #-}
{-| __C declaration:__ @nix_get_int@

    __defined at:__ @nix_api_value.h 345:9@

    __exported by:__ @nix_api_value.h@
-}
nix_get_int :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> IO HsBindgen.Runtime.LibC.Int64)
nix_get_int =
  RIP.unsafePerformIO hs_bindgen_517c988a1801b01f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_external@
foreign import ccall unsafe "hs_bindgen_58ab9c8ec918c71c" hs_bindgen_58ab9c8ec918c71c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_external@
hs_bindgen_58ab9c8ec918c71c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO (RIP.Ptr ExternalValue)))
hs_bindgen_58ab9c8ec918c71c =
  RIP.fromFFIType hs_bindgen_58ab9c8ec918c71c_base

{-# NOINLINE nix_get_external #-}
{-| __C declaration:__ @nix_get_external@

    __defined at:__ @nix_api_value.h 354:17@

    __exported by:__ @nix_api_value.h@
-}
nix_get_external :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO (RIP.Ptr ExternalValue))
nix_get_external =
  RIP.unsafePerformIO hs_bindgen_58ab9c8ec918c71c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx@
foreign import ccall unsafe "hs_bindgen_6c662c1a2601a0b3" hs_bindgen_6c662c1a2601a0b3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx@
hs_bindgen_6c662c1a2601a0b3 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value)))
hs_bindgen_6c662c1a2601a0b3 =
  RIP.fromFFIType hs_bindgen_6c662c1a2601a0b3_base

{-# NOINLINE nix_get_list_byidx #-}
{-| __C declaration:__ @nix_get_list_byidx@

    __defined at:__ @nix_api_value.h 366:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value))
nix_get_list_byidx =
  RIP.unsafePerformIO hs_bindgen_6c662c1a2601a0b3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_c4804ecdce0893ed" hs_bindgen_c4804ecdce0893ed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_list_byidx_lazy@
hs_bindgen_c4804ecdce0893ed :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value)))
hs_bindgen_c4804ecdce0893ed =
  RIP.fromFFIType hs_bindgen_c4804ecdce0893ed_base

{-# NOINLINE nix_get_list_byidx_lazy #-}
{-| __C declaration:__ @nix_get_list_byidx_lazy@

    __defined at:__ @nix_api_value.h 382:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_list_byidx_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (RIP.Ptr Nix_value))
nix_get_list_byidx_lazy =
  RIP.unsafePerformIO hs_bindgen_c4804ecdce0893ed

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname@
foreign import ccall unsafe "hs_bindgen_e015ccaa63bb3831" hs_bindgen_e015ccaa63bb3831_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname@
hs_bindgen_e015ccaa63bb3831 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_e015ccaa63bb3831 =
  RIP.fromFFIType hs_bindgen_e015ccaa63bb3831_base

{-# NOINLINE nix_get_attr_byname #-}
{-| __C declaration:__ @nix_get_attr_byname@

    __defined at:__ @nix_api_value.h 394:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byname =
  RIP.unsafePerformIO hs_bindgen_e015ccaa63bb3831

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy@
foreign import ccall unsafe "hs_bindgen_aa1793ee5721f5f8" hs_bindgen_aa1793ee5721f5f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byname_lazy@
hs_bindgen_aa1793ee5721f5f8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_aa1793ee5721f5f8 =
  RIP.fromFFIType hs_bindgen_aa1793ee5721f5f8_base

{-# NOINLINE nix_get_attr_byname_lazy #-}
{-| __C declaration:__ @nix_get_attr_byname_lazy@

    __defined at:__ @nix_api_value.h 410:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byname_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byname_lazy =
  RIP.unsafePerformIO hs_bindgen_aa1793ee5721f5f8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname@
foreign import ccall unsafe "hs_bindgen_41783a29f91923b4" hs_bindgen_41783a29f91923b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_has_attr_byname@
hs_bindgen_41783a29f91923b4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO RIP.CBool))
hs_bindgen_41783a29f91923b4 =
  RIP.fromFFIType hs_bindgen_41783a29f91923b4_base

{-# NOINLINE nix_has_attr_byname #-}
{-| __C declaration:__ @nix_has_attr_byname@

    __defined at:__ @nix_api_value.h 420:6@

    __exported by:__ @nix_api_value.h@
-}
nix_has_attr_byname :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_value) -> (RIP.Ptr EvalState) -> (PtrConst.PtrConst RIP.CChar) -> IO RIP.CBool)
nix_has_attr_byname =
  RIP.unsafePerformIO hs_bindgen_41783a29f91923b4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx@
foreign import ccall unsafe "hs_bindgen_2696599bda292c70" hs_bindgen_2696599bda292c70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx@
hs_bindgen_2696599bda292c70 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_2696599bda292c70 =
  RIP.fromFFIType hs_bindgen_2696599bda292c70_base

{-# NOINLINE nix_get_attr_byidx #-}
{-| __C declaration:__ @nix_get_attr_byidx@

    __defined at:__ @nix_api_value.h 446:1@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byidx =
  RIP.unsafePerformIO hs_bindgen_2696599bda292c70

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy@
foreign import ccall unsafe "hs_bindgen_fc5962c83868f7ff" hs_bindgen_fc5962c83868f7ff_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_byidx_lazy@
hs_bindgen_fc5962c83868f7ff :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value)))
hs_bindgen_fc5962c83868f7ff =
  RIP.fromFFIType hs_bindgen_fc5962c83868f7ff_base

{-# NOINLINE nix_get_attr_byidx_lazy #-}
{-| __C declaration:__ @nix_get_attr_byidx_lazy@

    __defined at:__ @nix_api_value.h 474:13@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_byidx_lazy :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> (RIP.Ptr (PtrConst.PtrConst RIP.CChar)) -> IO (RIP.Ptr Nix_value))
nix_get_attr_byidx_lazy =
  RIP.unsafePerformIO hs_bindgen_fc5962c83868f7ff

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx@
foreign import ccall unsafe "hs_bindgen_f6fc91ad15d85676" hs_bindgen_f6fc91ad15d85676_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_get_attr_name_byidx@
hs_bindgen_f6fc91ad15d85676 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_f6fc91ad15d85676 =
  RIP.fromFFIType hs_bindgen_f6fc91ad15d85676_base

{-# NOINLINE nix_get_attr_name_byidx #-}
{-| __C declaration:__ @nix_get_attr_name_byidx@

    __defined at:__ @nix_api_value.h 498:14@

    __exported by:__ @nix_api_value.h@
-}
nix_get_attr_name_byidx :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr EvalState) -> RIP.CUInt -> IO (PtrConst.PtrConst RIP.CChar))
nix_get_attr_name_byidx =
  RIP.unsafePerformIO hs_bindgen_f6fc91ad15d85676

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_bool@
foreign import ccall unsafe "hs_bindgen_e5da051fbb7825a3" hs_bindgen_e5da051fbb7825a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_bool@
hs_bindgen_e5da051fbb7825a3 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_e5da051fbb7825a3 =
  RIP.fromFFIType hs_bindgen_e5da051fbb7825a3_base

{-# NOINLINE nix_init_bool #-}
{-| __C declaration:__ @nix_init_bool@

    __defined at:__ @nix_api_value.h 515:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_bool :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO Generated.Nix.Util.Nix_err)
nix_init_bool =
  RIP.unsafePerformIO hs_bindgen_e5da051fbb7825a3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_string@
foreign import ccall unsafe "hs_bindgen_4fe967143b635cba" hs_bindgen_4fe967143b635cba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_string@
hs_bindgen_4fe967143b635cba :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_4fe967143b635cba =
  RIP.fromFFIType hs_bindgen_4fe967143b635cba_base

{-# NOINLINE nix_init_string #-}
{-| __C declaration:__ @nix_init_string@

    __defined at:__ @nix_api_value.h 524:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_init_string =
  RIP.unsafePerformIO hs_bindgen_4fe967143b635cba

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string@
foreign import ccall unsafe "hs_bindgen_8416a1a6e8e912ec" hs_bindgen_8416a1a6e8e912ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_path_string@
hs_bindgen_8416a1a6e8e912ec :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_8416a1a6e8e912ec =
  RIP.fromFFIType hs_bindgen_8416a1a6e8e912ec_base

{-# NOINLINE nix_init_path_string #-}
{-| __C declaration:__ @nix_init_path_string@

    __defined at:__ @nix_api_value.h 533:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_path_string :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_init_path_string =
  RIP.unsafePerformIO hs_bindgen_8416a1a6e8e912ec

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_float@
foreign import ccall unsafe "hs_bindgen_78399f7d997ad77c" hs_bindgen_78399f7d997ad77c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_float@
hs_bindgen_78399f7d997ad77c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CDouble -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_78399f7d997ad77c =
  RIP.fromFFIType hs_bindgen_78399f7d997ad77c_base

{-# NOINLINE nix_init_float #-}
{-| __C declaration:__ @nix_init_float@

    __defined at:__ @nix_api_value.h 542:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_float :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> RIP.CDouble -> IO Generated.Nix.Util.Nix_err)
nix_init_float =
  RIP.unsafePerformIO hs_bindgen_78399f7d997ad77c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_int@
foreign import ccall unsafe "hs_bindgen_fc7f15917937ba8e" hs_bindgen_fc7f15917937ba8e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_int@
hs_bindgen_fc7f15917937ba8e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.Int64 -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_fc7f15917937ba8e =
  RIP.fromFFIType hs_bindgen_fc7f15917937ba8e_base

{-# NOINLINE nix_init_int #-}
{-| __C declaration:__ @nix_init_int@

    __defined at:__ @nix_api_value.h 552:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_int :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> HsBindgen.Runtime.LibC.Int64 -> IO Generated.Nix.Util.Nix_err)
nix_init_int =
  RIP.unsafePerformIO hs_bindgen_fc7f15917937ba8e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_null@
foreign import ccall unsafe "hs_bindgen_9d5f35f1421e3f7b" hs_bindgen_9d5f35f1421e3f7b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_null@
hs_bindgen_9d5f35f1421e3f7b :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9d5f35f1421e3f7b =
  RIP.fromFFIType hs_bindgen_9d5f35f1421e3f7b_base

{-# NOINLINE nix_init_null #-}
{-| __C declaration:__ @nix_init_null@

    __defined at:__ @nix_api_value.h 559:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_null :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_init_null =
  RIP.unsafePerformIO hs_bindgen_9d5f35f1421e3f7b

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_apply@
foreign import ccall unsafe "hs_bindgen_7109b10732e0b207" hs_bindgen_7109b10732e0b207_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_apply@
hs_bindgen_7109b10732e0b207 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_7109b10732e0b207 =
  RIP.fromFFIType hs_bindgen_7109b10732e0b207_base

{-# NOINLINE nix_init_apply #-}
{-| __C declaration:__ @nix_init_apply@

    __defined at:__ @nix_api_value.h 576:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_apply :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_init_apply =
  RIP.unsafePerformIO hs_bindgen_7109b10732e0b207

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_external@
foreign import ccall unsafe "hs_bindgen_011f24d969f3801d" hs_bindgen_011f24d969f3801d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_external@
hs_bindgen_011f24d969f3801d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr ExternalValue) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_011f24d969f3801d =
  RIP.fromFFIType hs_bindgen_011f24d969f3801d_base

{-# NOINLINE nix_init_external #-}
{-| __C declaration:__ @nix_init_external@

    __defined at:__ @nix_api_value.h 585:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_external :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr ExternalValue) -> IO Generated.Nix.Util.Nix_err)
nix_init_external =
  RIP.unsafePerformIO hs_bindgen_011f24d969f3801d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list@
foreign import ccall unsafe "hs_bindgen_9901505dbdfed6dc" hs_bindgen_9901505dbdfed6dc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list@
hs_bindgen_9901505dbdfed6dc :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_9901505dbdfed6dc =
  RIP.fromFFIType hs_bindgen_9901505dbdfed6dc_base

{-# NOINLINE nix_make_list #-}
{-| __C declaration:__ @nix_make_list@

    __defined at:__ @nix_api_value.h 599:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_make_list =
  RIP.unsafePerformIO hs_bindgen_9901505dbdfed6dc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder@
foreign import ccall unsafe "hs_bindgen_b39407789a1562e6" hs_bindgen_b39407789a1562e6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_list_builder@
hs_bindgen_b39407789a1562e6 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr ListBuilder)))
hs_bindgen_b39407789a1562e6 =
  RIP.fromFFIType hs_bindgen_b39407789a1562e6_base

{-# NOINLINE nix_make_list_builder #-}
{-| __C declaration:__ @nix_make_list_builder@

    __defined at:__ @nix_api_value.h 608:15@

    __exported by:__ @nix_api_value.h@
-}
nix_make_list_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr ListBuilder))
nix_make_list_builder =
  RIP.unsafePerformIO hs_bindgen_b39407789a1562e6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert@
foreign import ccall unsafe "hs_bindgen_ed7e25b2e7930ad9" hs_bindgen_ed7e25b2e7930ad9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_insert@
hs_bindgen_ed7e25b2e7930ad9 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> RIP.CUInt -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_ed7e25b2e7930ad9 =
  RIP.fromFFIType hs_bindgen_ed7e25b2e7930ad9_base

{-# NOINLINE nix_list_builder_insert #-}
{-| __C declaration:__ @nix_list_builder_insert@

    __defined at:__ @nix_api_value.h 618:1@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_insert :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr ListBuilder) -> RIP.CUInt -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_list_builder_insert =
  RIP.unsafePerformIO hs_bindgen_ed7e25b2e7930ad9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free@
foreign import ccall unsafe "hs_bindgen_2f03d153c2878285" hs_bindgen_2f03d153c2878285_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_list_builder_free@
hs_bindgen_2f03d153c2878285 :: IO (RIP.FunPtr ((RIP.Ptr ListBuilder) -> IO ()))
hs_bindgen_2f03d153c2878285 =
  RIP.fromFFIType hs_bindgen_2f03d153c2878285_base

{-# NOINLINE nix_list_builder_free #-}
{-| __C declaration:__ @nix_list_builder_free@

    __defined at:__ @nix_api_value.h 625:6@

    __exported by:__ @nix_api_value.h@
-}
nix_list_builder_free :: RIP.FunPtr ((RIP.Ptr ListBuilder) -> IO ())
nix_list_builder_free =
  RIP.unsafePerformIO hs_bindgen_2f03d153c2878285

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs@
foreign import ccall unsafe "hs_bindgen_89324a6de9c74ce3" hs_bindgen_89324a6de9c74ce3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_attrs@
hs_bindgen_89324a6de9c74ce3 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr BindingsBuilder) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_89324a6de9c74ce3 =
  RIP.fromFFIType hs_bindgen_89324a6de9c74ce3_base

{-# NOINLINE nix_make_attrs #-}
{-| __C declaration:__ @nix_make_attrs@

    __defined at:__ @nix_api_value.h 639:9@

    __exported by:__ @nix_api_value.h@
-}
nix_make_attrs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr BindingsBuilder) -> IO Generated.Nix.Util.Nix_err)
nix_make_attrs =
  RIP.unsafePerformIO hs_bindgen_89324a6de9c74ce3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_primop@
foreign import ccall unsafe "hs_bindgen_b8e6aa4b438b5a34" hs_bindgen_b8e6aa4b438b5a34_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_init_primop@
hs_bindgen_b8e6aa4b438b5a34 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_b8e6aa4b438b5a34 =
  RIP.fromFFIType hs_bindgen_b8e6aa4b438b5a34_base

{-# NOINLINE nix_init_primop #-}
{-| __C declaration:__ @nix_init_primop@

    __defined at:__ @nix_api_value.h 649:9@

    __exported by:__ @nix_api_value.h@
-}
nix_init_primop :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (RIP.Ptr PrimOp) -> IO Generated.Nix.Util.Nix_err)
nix_init_primop =
  RIP.unsafePerformIO hs_bindgen_b8e6aa4b438b5a34

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_copy_value@
foreign import ccall unsafe "hs_bindgen_3f323d02e39b83dd" hs_bindgen_3f323d02e39b83dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_copy_value@
hs_bindgen_3f323d02e39b83dd :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3f323d02e39b83dd =
  RIP.fromFFIType hs_bindgen_3f323d02e39b83dd_base

{-# NOINLINE nix_copy_value #-}
{-| __C declaration:__ @nix_copy_value@

    __defined at:__ @nix_api_value.h 657:9@

    __exported by:__ @nix_api_value.h@
-}
nix_copy_value :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Nix_value) -> (PtrConst.PtrConst Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_copy_value =
  RIP.unsafePerformIO hs_bindgen_3f323d02e39b83dd

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder@
foreign import ccall unsafe "hs_bindgen_9c506a54baa925be" hs_bindgen_9c506a54baa925be_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_make_bindings_builder@
hs_bindgen_9c506a54baa925be :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr BindingsBuilder)))
hs_bindgen_9c506a54baa925be =
  RIP.fromFFIType hs_bindgen_9c506a54baa925be_base

{-# NOINLINE nix_make_bindings_builder #-}
{-| __C declaration:__ @nix_make_bindings_builder@

    __defined at:__ @nix_api_value.h 666:19@

    __exported by:__ @nix_api_value.h@
-}
nix_make_bindings_builder :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr BindingsBuilder))
nix_make_bindings_builder =
  RIP.unsafePerformIO hs_bindgen_9c506a54baa925be

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert@
foreign import ccall unsafe "hs_bindgen_543072ca4072697e" hs_bindgen_543072ca4072697e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_insert@
hs_bindgen_543072ca4072697e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr BindingsBuilder) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_543072ca4072697e =
  RIP.fromFFIType hs_bindgen_543072ca4072697e_base

{-# NOINLINE nix_bindings_builder_insert #-}
{-| __C declaration:__ @nix_bindings_builder_insert@

    __defined at:__ @nix_api_value.h 676:1@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_insert :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr BindingsBuilder) -> (PtrConst.PtrConst RIP.CChar) -> (RIP.Ptr Nix_value) -> IO Generated.Nix.Util.Nix_err)
nix_bindings_builder_insert =
  RIP.unsafePerformIO hs_bindgen_543072ca4072697e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free@
foreign import ccall unsafe "hs_bindgen_32ed5f7ad5b77ea3" hs_bindgen_32ed5f7ad5b77ea3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_bindings_builder_free@
hs_bindgen_32ed5f7ad5b77ea3 :: IO (RIP.FunPtr ((RIP.Ptr BindingsBuilder) -> IO ()))
hs_bindgen_32ed5f7ad5b77ea3 =
  RIP.fromFFIType hs_bindgen_32ed5f7ad5b77ea3_base

{-# NOINLINE nix_bindings_builder_free #-}
{-| __C declaration:__ @nix_bindings_builder_free@

    __defined at:__ @nix_api_value.h 683:6@

    __exported by:__ @nix_api_value.h@
-}
nix_bindings_builder_free :: RIP.FunPtr ((RIP.Ptr BindingsBuilder) -> IO ())
nix_bindings_builder_free =
  RIP.unsafePerformIO hs_bindgen_32ed5f7ad5b77ea3

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_string_realise@
foreign import ccall unsafe "hs_bindgen_e6264d01f9fb53da" hs_bindgen_e6264d01f9fb53da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_string_realise@
hs_bindgen_e6264d01f9fb53da :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO (RIP.Ptr Nix_realised_string)))
hs_bindgen_e6264d01f9fb53da =
  RIP.fromFFIType hs_bindgen_e6264d01f9fb53da_base

{-# NOINLINE nix_string_realise #-}
{-| __C declaration:__ @nix_string_realise@

    __defined at:__ @nix_api_value.h 702:23@

    __exported by:__ @nix_api_value.h@
-}
nix_string_realise :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr Nix_value) -> RIP.CBool -> IO (RIP.Ptr Nix_realised_string))
nix_string_realise =
  RIP.unsafePerformIO hs_bindgen_e6264d01f9fb53da

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start@
foreign import ccall unsafe "hs_bindgen_ee939a53ba0ed7b2" hs_bindgen_ee939a53ba0ed7b2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_start@
hs_bindgen_ee939a53ba0ed7b2 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_ee939a53ba0ed7b2 =
  RIP.fromFFIType hs_bindgen_ee939a53ba0ed7b2_base

{-# NOINLINE nix_realised_string_get_buffer_start #-}
{-| __C declaration:__ @nix_realised_string_get_buffer_start@

    __defined at:__ @nix_api_value.h 708:14@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_start :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO (PtrConst.PtrConst RIP.CChar))
nix_realised_string_get_buffer_start =
  RIP.unsafePerformIO hs_bindgen_ee939a53ba0ed7b2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size@
foreign import ccall unsafe "hs_bindgen_c9a4b8a2813300ec" hs_bindgen_c9a4b8a2813300ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_buffer_size@
hs_bindgen_c9a4b8a2813300ec :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize))
hs_bindgen_c9a4b8a2813300ec =
  RIP.fromFFIType hs_bindgen_c9a4b8a2813300ec_base

{-# NOINLINE nix_realised_string_get_buffer_size #-}
{-| __C declaration:__ @nix_realised_string_get_buffer_size@

    __defined at:__ @nix_api_value.h 714:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_buffer_size :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize)
nix_realised_string_get_buffer_size =
  RIP.unsafePerformIO hs_bindgen_c9a4b8a2813300ec

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count@
foreign import ccall unsafe "hs_bindgen_f5ec54d23473821f" hs_bindgen_f5ec54d23473821f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path_count@
hs_bindgen_f5ec54d23473821f :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize))
hs_bindgen_f5ec54d23473821f =
  RIP.fromFFIType hs_bindgen_f5ec54d23473821f_base

{-# NOINLINE nix_realised_string_get_store_path_count #-}
{-| __C declaration:__ @nix_realised_string_get_store_path_count@

    __defined at:__ @nix_api_value.h 720:8@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path_count :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO HsBindgen.Runtime.LibC.CSize)
nix_realised_string_get_store_path_count =
  RIP.unsafePerformIO hs_bindgen_f5ec54d23473821f

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path@
foreign import ccall unsafe "hs_bindgen_84eab4b432506d83" hs_bindgen_84eab4b432506d83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_get_store_path@
hs_bindgen_84eab4b432506d83 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> HsBindgen.Runtime.LibC.CSize -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath)))
hs_bindgen_84eab4b432506d83 =
  RIP.fromFFIType hs_bindgen_84eab4b432506d83_base

{-# NOINLINE nix_realised_string_get_store_path #-}
{-| __C declaration:__ @nix_realised_string_get_store_path@

    __defined at:__ @nix_api_value.h 727:19@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_get_store_path :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> HsBindgen.Runtime.LibC.CSize -> IO (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath))
nix_realised_string_get_store_path =
  RIP.unsafePerformIO hs_bindgen_84eab4b432506d83

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free@
foreign import ccall unsafe "hs_bindgen_5fe04f32bba027a5" hs_bindgen_5fe04f32bba027a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixvalue_Generated.Nix.Value_get_nix_realised_string_free@
hs_bindgen_5fe04f32bba027a5 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO ()))
hs_bindgen_5fe04f32bba027a5 =
  RIP.fromFFIType hs_bindgen_5fe04f32bba027a5_base

{-# NOINLINE nix_realised_string_free #-}
{-| __C declaration:__ @nix_realised_string_free@

    __defined at:__ @nix_api_value.h 732:6@

    __exported by:__ @nix_api_value.h@
-}
nix_realised_string_free :: RIP.FunPtr ((RIP.Ptr Nix_realised_string) -> IO ())
nix_realised_string_free =
  RIP.unsafePerformIO hs_bindgen_5fe04f32bba027a5
