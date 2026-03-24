{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Derivation.FunPtr
    ( Generated.Nix.Store.Derivation.FunPtr.nix_derivation_clone
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_free
    , Generated.Nix.Store.Derivation.FunPtr.nix_derivation_to_json
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Derivation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/derivation.h>"
  , "/* org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone */"
  , "__attribute__ ((const))"
  , "nix_derivation *(*hs_bindgen_760e8089a6990398 (void)) ("
  , "  nix_derivation const *arg1"
  , ")"
  , "{"
  , "  return &nix_derivation_clone;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ea87d86b04e0de7b (void)) ("
  , "  nix_derivation *arg1"
  , ")"
  , "{"
  , "  return &nix_derivation_free;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_737e992aab29a567 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_derivation_to_json;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone@
foreign import ccall unsafe "hs_bindgen_760e8089a6990398" hs_bindgen_760e8089a6990398_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_clone@
hs_bindgen_760e8089a6990398 :: IO (RIP.FunPtr ((PtrConst.PtrConst Nix_derivation) -> IO (RIP.Ptr Nix_derivation)))
hs_bindgen_760e8089a6990398 =
  RIP.fromFFIType hs_bindgen_760e8089a6990398_base

{-# NOINLINE nix_derivation_clone #-}
{-| __C declaration:__ @nix_derivation_clone@

    __defined at:__ @nix_api_store\/derivation.h 29:18@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_clone :: RIP.FunPtr ((PtrConst.PtrConst Nix_derivation) -> IO (RIP.Ptr Nix_derivation))
nix_derivation_clone =
  RIP.unsafePerformIO hs_bindgen_760e8089a6990398

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free@
foreign import ccall unsafe "hs_bindgen_ea87d86b04e0de7b" hs_bindgen_ea87d86b04e0de7b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_free@
hs_bindgen_ea87d86b04e0de7b :: IO (RIP.FunPtr ((RIP.Ptr Nix_derivation) -> IO ()))
hs_bindgen_ea87d86b04e0de7b =
  RIP.fromFFIType hs_bindgen_ea87d86b04e0de7b_base

{-# NOINLINE nix_derivation_free #-}
{-| __C declaration:__ @nix_derivation_free@

    __defined at:__ @nix_api_store\/derivation.h 37:6@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_free :: RIP.FunPtr ((RIP.Ptr Nix_derivation) -> IO ())
nix_derivation_free =
  RIP.unsafePerformIO hs_bindgen_ea87d86b04e0de7b

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json@
foreign import ccall unsafe "hs_bindgen_737e992aab29a567" hs_bindgen_737e992aab29a567_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorederivation_Generated.Nix.Store.Derivation_get_nix_derivation_to_json@
hs_bindgen_737e992aab29a567 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_737e992aab29a567 =
  RIP.fromFFIType hs_bindgen_737e992aab29a567_base

{-# NOINLINE nix_derivation_to_json #-}
{-| __C declaration:__ @nix_derivation_to_json@

    __defined at:__ @nix_api_store\/derivation.h 47:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_to_json :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_derivation) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_derivation_to_json =
  RIP.unsafePerformIO hs_bindgen_737e992aab29a567
