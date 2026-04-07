{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Derivation.Unsafe
    ( Generated.Nix.Store.Derivation.Unsafe.nix_derivation_clone
    , Generated.Nix.Store.Derivation.Unsafe.nix_derivation_free
    , Generated.Nix.Store.Derivation.Unsafe.nix_derivation_to_json
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Derivation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/derivation.h>"
  , "nix_derivation *hs_bindgen_c8987007b8e53a84 ("
  , "  nix_derivation const *arg1"
  , ")"
  , "{"
  , "  return (nix_derivation_clone)(arg1);"
  , "}"
  , "void hs_bindgen_af5f44f474ae0217 ("
  , "  nix_derivation *arg1"
  , ")"
  , "{"
  , "  (nix_derivation_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_60b2f4e606005e64 ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_derivation_to_json)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_clone@
foreign import ccall unsafe "hs_bindgen_c8987007b8e53a84" hs_bindgen_c8987007b8e53a84_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_clone@
hs_bindgen_c8987007b8e53a84 ::
     PtrConst.PtrConst Nix_derivation
  -> IO (RIP.Ptr Nix_derivation)
hs_bindgen_c8987007b8e53a84 =
  RIP.fromFFIType hs_bindgen_c8987007b8e53a84_base

{-| __C declaration:__ @nix_derivation_clone@

    __defined at:__ @nix_api_store\/derivation.h 29:18@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_clone ::
     PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @d@
  -> IO (RIP.Ptr Nix_derivation)
nix_derivation_clone = hs_bindgen_c8987007b8e53a84

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_free@
foreign import ccall unsafe "hs_bindgen_af5f44f474ae0217" hs_bindgen_af5f44f474ae0217_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_free@
hs_bindgen_af5f44f474ae0217 ::
     RIP.Ptr Nix_derivation
  -> IO ()
hs_bindgen_af5f44f474ae0217 =
  RIP.fromFFIType hs_bindgen_af5f44f474ae0217_base

{-| __C declaration:__ @nix_derivation_free@

    __defined at:__ @nix_api_store\/derivation.h 37:6@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_free ::
     RIP.Ptr Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> IO ()
nix_derivation_free = hs_bindgen_af5f44f474ae0217

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_to_json@
foreign import ccall unsafe "hs_bindgen_60b2f4e606005e64" hs_bindgen_60b2f4e606005e64_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Unsafe_nix_derivation_to_json@
hs_bindgen_60b2f4e606005e64 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_derivation
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_60b2f4e606005e64 =
  RIP.fromFFIType hs_bindgen_60b2f4e606005e64_base

{-| __C declaration:__ @nix_derivation_to_json@

    __defined at:__ @nix_api_store\/derivation.h 47:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_to_json ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> IO Generated.Nix.Util.Nix_err
nix_derivation_to_json = hs_bindgen_60b2f4e606005e64
