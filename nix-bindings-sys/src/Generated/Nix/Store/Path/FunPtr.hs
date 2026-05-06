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
  , "/* org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_05a5cf58d4676db6 (void)) ("
  , "  StorePath const *arg1"
  , ")"
  , "{"
  , "  return &nix_store_path_clone;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1cfe43fce7a66e48 (void)) ("
  , "  StorePath *arg1"
  , ")"
  , "{"
  , "  return &nix_store_path_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4104b4ed7db9076c (void)) ("
  , "  StorePath const *arg1,"
  , "  nix_get_string_callback arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &nix_store_path_name;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_1003ba5c03e06fb8 (void)) ("
  , "  nix_c_context *arg1,"
  , "  StorePath const *arg2,"
  , "  nix_store_path_hash_part *arg3"
  , ")"
  , "{"
  , "  return &nix_store_path_hash;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_ec2caf1e32c9e394 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_store_path_hash_part const *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &nix_store_create_from_parts;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone@
foreign import ccall unsafe "hs_bindgen_05a5cf58d4676db6" hs_bindgen_05a5cf58d4676db6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_clone@
hs_bindgen_05a5cf58d4676db6 :: IO (RIP.FunPtr ((PtrConst.PtrConst StorePath) -> IO (RIP.Ptr StorePath)))
hs_bindgen_05a5cf58d4676db6 =
  RIP.fromFFIType hs_bindgen_05a5cf58d4676db6_base

{-# NOINLINE nix_store_path_clone #-}
{-| __C declaration:__ @nix_store_path_clone@

    __defined at:__ @nix_api_store\/store_path.h 32:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_clone :: RIP.FunPtr ((PtrConst.PtrConst StorePath) -> IO (RIP.Ptr StorePath))
nix_store_path_clone =
  RIP.unsafePerformIO hs_bindgen_05a5cf58d4676db6

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free@
foreign import ccall unsafe "hs_bindgen_1cfe43fce7a66e48" hs_bindgen_1cfe43fce7a66e48_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_free@
hs_bindgen_1cfe43fce7a66e48 :: IO (RIP.FunPtr ((RIP.Ptr StorePath) -> IO ()))
hs_bindgen_1cfe43fce7a66e48 =
  RIP.fromFFIType hs_bindgen_1cfe43fce7a66e48_base

{-# NOINLINE nix_store_path_free #-}
{-| __C declaration:__ @nix_store_path_free@

    __defined at:__ @nix_api_store\/store_path.h 39:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_free :: RIP.FunPtr ((RIP.Ptr StorePath) -> IO ())
nix_store_path_free =
  RIP.unsafePerformIO hs_bindgen_1cfe43fce7a66e48

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name@
foreign import ccall unsafe "hs_bindgen_4104b4ed7db9076c" hs_bindgen_4104b4ed7db9076c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_name@
hs_bindgen_4104b4ed7db9076c :: IO (RIP.FunPtr ((PtrConst.PtrConst StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4104b4ed7db9076c =
  RIP.fromFFIType hs_bindgen_4104b4ed7db9076c_base

{-# NOINLINE nix_store_path_name #-}
{-| __C declaration:__ @nix_store_path_name@

    __defined at:__ @nix_api_store\/store_path.h 48:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_name :: RIP.FunPtr ((PtrConst.PtrConst StorePath) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO ())
nix_store_path_name =
  RIP.unsafePerformIO hs_bindgen_4104b4ed7db9076c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash@
foreign import ccall unsafe "hs_bindgen_1003ba5c03e06fb8" hs_bindgen_1003ba5c03e06fb8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_path_hash@
hs_bindgen_1003ba5c03e06fb8 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst StorePath) -> (RIP.Ptr Nix_store_path_hash_part) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_1003ba5c03e06fb8 =
  RIP.fromFFIType hs_bindgen_1003ba5c03e06fb8_base

{-# NOINLINE nix_store_path_hash #-}
{-| __C declaration:__ @nix_store_path_hash@

    __defined at:__ @nix_api_store\/store_path.h 71:1@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_hash :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst StorePath) -> (RIP.Ptr Nix_store_path_hash_part) -> IO Generated.Nix.Util.Nix_err)
nix_store_path_hash =
  RIP.unsafePerformIO hs_bindgen_1003ba5c03e06fb8

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts@
foreign import ccall unsafe "hs_bindgen_ec2caf1e32c9e394" hs_bindgen_ec2caf1e32c9e394_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepath_Generated.Nix.Store.Path_get_nix_store_create_from_parts@
hs_bindgen_ec2caf1e32c9e394 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_store_path_hash_part) -> (PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr StorePath)))
hs_bindgen_ec2caf1e32c9e394 =
  RIP.fromFFIType hs_bindgen_ec2caf1e32c9e394_base

{-# NOINLINE nix_store_create_from_parts #-}
{-| __C declaration:__ @nix_store_create_from_parts@

    __defined at:__ @nix_api_store\/store_path.h 86:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_create_from_parts :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_store_path_hash_part) -> (PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))) -> HsBindgen.Runtime.LibC.CSize -> IO (RIP.Ptr StorePath))
nix_store_create_from_parts =
  RIP.unsafePerformIO hs_bindgen_ec2caf1e32c9e394
