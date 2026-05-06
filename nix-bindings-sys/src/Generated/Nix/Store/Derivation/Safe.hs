{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Derivation.Safe
    ( Generated.Nix.Store.Derivation.Safe.nix_derivation_clone
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_free
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_to_json
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_get_outputs
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_get_input_drv_outputs
    , Generated.Nix.Store.Derivation.Safe.nix_derivation_has_dynamic_inputs
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
  , "nix_err hs_bindgen_f08169f5278921ab ("
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
  , "  return (nix_derivation_get_outputs)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "nix_err hs_bindgen_223453c317eb80bc ("
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
  , "  return (nix_derivation_get_input_drv_outputs)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "nix_err hs_bindgen_3263afc03169bb4d ("
  , "  nix_c_context *arg1,"
  , "  nix_derivation const *arg2,"
  , "  _Bool *arg3"
  , ")"
  , "{"
  , "  return (nix_derivation_has_dynamic_inputs)(arg1, arg2, arg3);"
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

    __defined at:__ @nix_api_store\/derivation.h 33:18@

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

    __defined at:__ @nix_api_store\/derivation.h 41:6@

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

    __defined at:__ @nix_api_store\/derivation.h 51:9@

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

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_get_outputs@
foreign import ccall safe "hs_bindgen_f08169f5278921ab" hs_bindgen_f08169f5278921ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_get_outputs@
hs_bindgen_f08169f5278921ab ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
  -> PtrConst.PtrConst Nix_derivation
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_f08169f5278921ab =
  RIP.fromFFIType hs_bindgen_f08169f5278921ab_base

{-| __C declaration:__ @nix_derivation_get_outputs@

    __defined at:__ @nix_api_store\/derivation.h 79:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_get_outputs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @drv_path@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_derivation_get_outputs =
  hs_bindgen_f08169f5278921ab

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_get_input_drv_outputs@
foreign import ccall safe "hs_bindgen_223453c317eb80bc" hs_bindgen_223453c317eb80bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_get_input_drv_outputs@
hs_bindgen_223453c317eb80bc ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
  -> PtrConst.PtrConst Nix_derivation
  -> RIP.Ptr RIP.Void
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_223453c317eb80bc =
  RIP.fromFFIType hs_bindgen_223453c317eb80bc_base

{-| __C declaration:__ @nix_derivation_get_input_drv_outputs@

    __defined at:__ @nix_api_store\/derivation.h 108:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_get_input_drv_outputs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Generated.Nix.Store.Fwd.Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @userdata@
  -> RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
     -- ^ __C declaration:__ @callback@
  -> IO Generated.Nix.Util.Nix_err
nix_derivation_get_input_drv_outputs =
  hs_bindgen_223453c317eb80bc

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_has_dynamic_inputs@
foreign import ccall safe "hs_bindgen_3263afc03169bb4d" hs_bindgen_3263afc03169bb4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorederivation_Generated.Nix.Store.Derivation_Safe_nix_derivation_has_dynamic_inputs@
hs_bindgen_3263afc03169bb4d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_derivation
  -> RIP.Ptr RIP.CBool
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_3263afc03169bb4d =
  RIP.fromFFIType hs_bindgen_3263afc03169bb4d_base

{-| __C declaration:__ @nix_derivation_has_dynamic_inputs@

    __defined at:__ @nix_api_store\/derivation.h 131:9@

    __exported by:__ @nix_api_store\/derivation.h@
-}
nix_derivation_has_dynamic_inputs ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_derivation
     -- ^ __C declaration:__ @drv@
  -> RIP.Ptr RIP.CBool
     -- ^ __C declaration:__ @out_has_dynamic@
  -> IO Generated.Nix.Util.Nix_err
nix_derivation_has_dynamic_inputs =
  hs_bindgen_3263afc03169bb4d
