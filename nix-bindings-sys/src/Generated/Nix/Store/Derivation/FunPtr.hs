{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Derivation.FunPtr
    ( Generated.Nix.Store.Derivation.FunPtr.nix_derivation_clone
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_free
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_to_json
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_get_outputs
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_get_input_drv_outputs
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_has_dynamic_inputs
    )
  where

import qualified Generated.Nix.Store.Fwd
import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Derivation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/derivation.h>"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_62733adb733923c9 (void)) ("
  , "  nix_derivation const *arg1"
  , ")"
  , "{"
  , "  return &nix_derivation_clone;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9f5528506b2ab025 (void)) ("
  , "  nix_derivation *arg1"
  , ")"
  , "{"
  , "  return &nix_derivation_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6aa0ed55e8e386da (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_derivation_to_json;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_outputs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_69dfc020e72e0d6d (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation const *arg3,"
  , "  StorePath const *arg4,"
  , "  void *arg5,"
  , "  void (*arg6) ("
  , "  nix_c_context *arg1,"
  , "  void *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4"
  , ")"
  , ")"
  , "{"
  , "  return &nix_derivation_get_outputs;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_input_drv_outputs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_4243440b1adc65e2 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  nix_derivation const *arg3,"
  , "  void *arg4,"
  , "  void (*arg5) ("
  , "  nix_c_context *arg1,"
  , "  void *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4"
  , ")"
  , ")"
  , "{"
  , "  return &nix_derivation_get_input_drv_outputs;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_has_dynamic_inputs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_3abb1942b6776c1d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  _Bool *arg3"
  , ")"
  , "{"
  , "  return &nix_derivation_has_dynamic_inputs;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone@
foreign import ccall unsafe "hs_bindgen_62733adb733923c9" hs_bindgen_62733adb733923c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone@
hs_bindgen_62733adb733923c9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Nix_derivation) -> IO (RIP.Ptr Nix_derivation)))
hs_bindgen_62733adb733923c9 =
  RIP.fromFFIType hs_bindgen_62733adb733923c9_base

{-# NOINLINE nix_derivation_clone #-}
{-| __C declaration:__ @nix_derivation_clone@

    __defined at:__ @nix_api_store\/derivation.h 33:18@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_clone :: RIP.FunPtr ((PtrConst.PtrConst Nix_derivation) -> IO (RIP.Ptr Nix_derivation))
nix_derivation_clone =
  RIP.unsafePerformIO hs_bindgen_62733adb733923c9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free@
foreign import ccall unsafe "hs_bindgen_9f5528506b2ab025" hs_bindgen_9f5528506b2ab025_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free@
hs_bindgen_9f5528506b2ab025 :: IO (RIP.FunPtr ((RIP.Ptr Nix_derivation) -> IO ()))
hs_bindgen_9f5528506b2ab025 =
  RIP.fromFFIType hs_bindgen_9f5528506b2ab025_base

{-# NOINLINE nix_derivation_free #-}
{-| __C declaration:__ @nix_derivation_free@

    __defined at:__ @nix_api_store\/derivation.h 41:6@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_free :: RIP.FunPtr ((RIP.Ptr Nix_derivation) -> IO ())
nix_derivation_free =
  RIP.unsafePerformIO hs_bindgen_9f5528506b2ab025

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json@
foreign import ccall unsafe "hs_bindgen_6aa0ed55e8e386da" hs_bindgen_6aa0ed55e8e386da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json@
hs_bindgen_6aa0ed55e8e386da :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6aa0ed55e8e386da =
  RIP.fromFFIType hs_bindgen_6aa0ed55e8e386da_base

{-# NOINLINE nix_derivation_to_json #-}
{-| __C declaration:__ @nix_derivation_to_json@

    __defined at:__ @nix_api_store\/derivation.h 51:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_to_json :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_derivation_to_json =
  RIP.unsafePerformIO hs_bindgen_6aa0ed55e8e386da

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_outputs@
foreign import ccall unsafe "hs_bindgen_69dfc020e72e0d6d" hs_bindgen_69dfc020e72e0d6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_outputs@
hs_bindgen_69dfc020e72e0d6d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst Nix_derivation) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_69dfc020e72e0d6d =
  RIP.fromFFIType hs_bindgen_69dfc020e72e0d6d_base

{-# NOINLINE nix_derivation_get_outputs #-}
{-| __C declaration:__ @nix_derivation_get_outputs@

    __defined at:__ @nix_api_store\/derivation.h 79:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_get_outputs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst Nix_derivation) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_derivation_get_outputs =
  RIP.unsafePerformIO hs_bindgen_69dfc020e72e0d6d

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_input_drv_outputs@
foreign import ccall unsafe "hs_bindgen_4243440b1adc65e2" hs_bindgen_4243440b1adc65e2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_get_input_drv_outputs@
hs_bindgen_4243440b1adc65e2 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst Nix_derivation) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_4243440b1adc65e2 =
  RIP.fromFFIType hs_bindgen_4243440b1adc65e2_base

{-# NOINLINE nix_derivation_get_input_drv_outputs #-}
{-| __C declaration:__ @nix_derivation_get_input_drv_outputs@

    __defined at:__ @nix_api_store\/derivation.h 108:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_get_input_drv_outputs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst Nix_derivation) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_derivation_get_input_drv_outputs =
  RIP.unsafePerformIO hs_bindgen_4243440b1adc65e2

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_has_dynamic_inputs@
foreign import ccall unsafe "hs_bindgen_3abb1942b6776c1d" hs_bindgen_3abb1942b6776c1d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_has_dynamic_inputs@
hs_bindgen_3abb1942b6776c1d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> (RIP.Ptr RIP.CBool) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_3abb1942b6776c1d =
  RIP.fromFFIType hs_bindgen_3abb1942b6776c1d_base

{-# NOINLINE nix_derivation_has_dynamic_inputs #-}
{-| __C declaration:__ @nix_derivation_has_dynamic_inputs@

    __defined at:__ @nix_api_store\/derivation.h 131:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_has_dynamic_inputs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> (RIP.Ptr RIP.CBool) -> IO Generated.Nix.Util.Nix_err)
nix_derivation_has_dynamic_inputs =
  RIP.unsafePerformIO hs_bindgen_3abb1942b6776c1d
