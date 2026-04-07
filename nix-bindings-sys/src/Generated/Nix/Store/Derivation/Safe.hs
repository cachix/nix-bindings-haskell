{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Derivation.Safe
    ( Generated.Nix.Store.Derivation.Safe.nix_derivation_clone
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_free
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_to_json
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Derivation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/derivation.h>"
  , "nix_derivation *hs_bindgen_7af7fe9cf06bb549 ("
  , "  nix_derivation const *arg1"
  , ")"
  , "{"
  , "  return (nix_derivation_clone)(arg1);"
  , "}"
  , "void hs_bindgen_ff5bd1ae12d07b2c ("
  , "  nix_derivation *arg1"
  , ")"
  , "{"
  , "  (nix_derivation_free)(arg1);"
  , "}"
  , "nix_err hs_bindgen_46cb7ce991f306ff ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return (nix_derivation_to_json)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_clone@
foreign import ccall safe "hs_bindgen_7af7fe9cf06bb549" hs_bindgen_7af7fe9cf06bb549_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_clone@
hs_bindgen_7af7fe9cf06bb549 ::
     PtrConst.PtrConst Nix_derivation
  -> IO (RIP.Ptr Nix_derivation)
hs_bindgen_7af7fe9cf06bb549 =
  RIP.fromFFIType hs_bindgen_7af7fe9cf06bb549_base

{-| __C declaration:__ @nix_derivation_clone@

    __defined at:__ @nix_api_store\/derivation.h 29:18@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_clone ::
     PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @d@
  -> IO (RIP.Ptr Nix_derivation)
nix_derivation_clone = hs_bindgen_7af7fe9cf06bb549

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_free@
foreign import ccall safe "hs_bindgen_ff5bd1ae12d07b2c" hs_bindgen_ff5bd1ae12d07b2c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_free@
hs_bindgen_ff5bd1ae12d07b2c ::
     RIP.Ptr Nix_derivation
  -> IO ()
hs_bindgen_ff5bd1ae12d07b2c =
  RIP.fromFFIType hs_bindgen_ff5bd1ae12d07b2c_base

{-| __C declaration:__ @nix_derivation_free@

    __defined at:__ @nix_api_store\/derivation.h 37:6@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_free ::
     RIP.Ptr Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> IO ()
nix_derivation_free = hs_bindgen_ff5bd1ae12d07b2c

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_to_json@
foreign import ccall safe "hs_bindgen_46cb7ce991f306ff" hs_bindgen_46cb7ce991f306ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_to_json@
hs_bindgen_46cb7ce991f306ff ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_derivation
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_46cb7ce991f306ff =
  RIP.fromFFIType hs_bindgen_46cb7ce991f306ff_base

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
nix_derivation_to_json = hs_bindgen_46cb7ce991f306ff
