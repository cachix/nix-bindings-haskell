{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Path.FunPtr
    ( Generated.Nix.Store.Path.FunPtr.nix_store_path_clone
    , Generated.Nix.Store.Path.FunPtr.nix_store_path_free
    , Generated.Nix.Store.Path.FunPtr.nix_store_path_name
    , Generated.Nix.Store.Path.FunPtr.nix_store_path_hash
    , Generated.Nix.Store.Path.FunPtr.nix_store_create_from_parts
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.IncompleteArray as IA
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.IsArray as IsA
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Path

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/store_path.h>"
  , "/* org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_e9fbabb74fd4d27e (void)) ("
  , "  StorePath const *arg1"
  , ")"
  , "{"
  , "  return &nix_store_path_clone;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9cb0f8462268f7d1 (void)) ("
  , "  StorePath *arg1"
  , ")"
  , "{"
  , "  return &nix_store_path_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b8d9892efee85a7c (void)) ("
  , "  StorePath const *arg1,"
  , "  nix_get_string_callback arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &nix_store_path_name;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_4e975da9555cd137 (void)) ("
  , "  nix_c_context *arg1,"
  , "  StorePath const *arg2,"
  , "  nix_store_path_hash_part *arg3"
  , ")"
  , "{"
  , "  return &nix_store_path_hash;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_5b640c28f17b066f (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_store_path_hash_part const *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &nix_store_create_from_parts;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone@
foreign import ccall unsafe "hs_bindgen_e9fbabb74fd4d27e" hs_bindgen_e9fbabb74fd4d27e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone@
hs_bindgen_e9fbabb74fd4d27e :: IO (RIP.FunPtr ((PtrConst.PtrConst StorePath) -> IO (RIP.Ptr StorePath)))
hs_bindgen_e9fbabb74fd4d27e =
  RIP.fromFFIType hs_bindgen_e9fbabb74fd4d27e_base

{-# NOINLINE nix_store_path_clone #-}
{-| __C declaration:__ @nix_store_path_clone@

    __defined at:__ @nix_api_store\/store_path.h 32:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_clone :: RIP.FunPtr ((PtrConst.PtrConst StorePath) -> IO (RIP.Ptr StorePath))
nix_store_path_clone =
  RIP.unsafePerformIO hs_bindgen_e9fbabb74fd4d27e

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free@
foreign import ccall unsafe "hs_bindgen_9cb0f8462268f7d1" hs_bindgen_9cb0f8462268f7d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free@
hs_bindgen_9cb0f8462268f7d1 :: IO (RIP.FunPtr ((RIP.Ptr StorePath) -> IO ()))
hs_bindgen_9cb0f8462268f7d1 =
  RIP.fromFFIType hs_bindgen_9cb0f8462268f7d1_base

{-# NOINLINE nix_store_path_free #-}
{-| __C declaration:__ @nix_store_path_free@

    __defined at:__ @nix_api_store\/store_path.h 39:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_free :: RIP.FunPtr ((RIP.Ptr StorePath) -> IO ())
nix_store_path_free =
  RIP.unsafePerformIO hs_bindgen_9cb0f8462268f7d1

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name@
foreign import ccall unsafe "hs_bindgen_b8d9892efee85a7c" hs_bindgen_b8d9892efee85a7c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name@
hs_bindgen_b8d9892efee85a7c :: IO (RIP.FunPtr ((PtrConst.PtrConst StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b8d9892efee85a7c =
  RIP.fromFFIType hs_bindgen_b8d9892efee85a7c_base

{-# NOINLINE nix_store_path_name #-}
{-| __C declaration:__ @nix_store_path_name@

    __defined at:__ @nix_api_store\/store_path.h 48:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_name :: RIP.FunPtr ((PtrConst.PtrConst StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO ())
nix_store_path_name =
  RIP.unsafePerformIO hs_bindgen_b8d9892efee85a7c

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash@
foreign import ccall unsafe "hs_bindgen_4e975da9555cd137" hs_bindgen_4e975da9555cd137_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash@
hs_bindgen_4e975da9555cd137 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst StorePath) -> (RIP.Ptr Nix_store_path_hash_part) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_4e975da9555cd137 =
  RIP.fromFFIType hs_bindgen_4e975da9555cd137_base

{-# NOINLINE nix_store_path_hash #-}
{-| __C declaration:__ @nix_store_path_hash@

    __defined at:__ @nix_api_store\/store_path.h 71:1@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_hash :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst StorePath) -> (RIP.Ptr Nix_store_path_hash_part) -> IO Generated.Nix.Util.Nix_err)
nix_store_path_hash =
  RIP.unsafePerformIO hs_bindgen_4e975da9555cd137

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts@
foreign import ccall unsafe "hs_bindgen_5b640c28f17b066f" hs_bindgen_5b640c28f17b066f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts@
hs_bindgen_5b640c28f17b066f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_store_path_hash_part) -> (PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr StorePath)))
hs_bindgen_5b640c28f17b066f =
  RIP.fromFFIType hs_bindgen_5b640c28f17b066f_base

{-# NOINLINE nix_store_create_from_parts #-}
{-| __C declaration:__ @nix_store_create_from_parts@

    __defined at:__ @nix_api_store\/store_path.h 86:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_create_from_parts :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_store_path_hash_part) -> (PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr StorePath))
nix_store_create_from_parts =
  RIP.unsafePerformIO hs_bindgen_5b640c28f17b066f
