{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Realisation.FunPtr
    ( Generated.Nix.Store.Realisation.FunPtr.nix_store_query_realisation
    , Generated.Nix.Store.Realisation.FunPtr.nix_realisation_free
    , Generated.Nix.Store.Realisation.FunPtr.nix_realisation_get_out_path
    , Generated.Nix.Store.Realisation.FunPtr.nix_realisation_get_signatures
    )
  where

import qualified Generated.Nix.Store.Fwd
import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Realisation

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/realisation.h>"
  , "/* org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_store_query_realisation */"
  , "__attribute__ ((const))"
  , "nix_realisation *(*hs_bindgen_88c292eb05880ac9 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_query_realisation;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1f2b32f63f633d59 (void)) ("
  , "  nix_realisation *arg1"
  , ")"
  , "{"
  , "  return &nix_realisation_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_out_path */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_24966a29dafa3ec7 (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_realisation const *arg2"
  , ")"
  , "{"
  , "  return &nix_realisation_get_out_path;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_signatures */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_70e28b346ac8326d (void)) ("
  , "  nix_c_context *arg1,"
  , "  nix_realisation const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  nix_c_context *arg1,"
  , "  void *arg2,"
  , "  char const *arg3"
  , ")"
  , ")"
  , "{"
  , "  return &nix_realisation_get_signatures;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_store_query_realisation@
foreign import ccall unsafe "hs_bindgen_88c292eb05880ac9" hs_bindgen_88c292eb05880ac9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_store_query_realisation@
hs_bindgen_88c292eb05880ac9 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_realisation)))
hs_bindgen_88c292eb05880ac9 =
  RIP.fromFFIType hs_bindgen_88c292eb05880ac9_base

{-# NOINLINE nix_store_query_realisation #-}
{-| __C declaration:__ @nix_store_query_realisation@

    __defined at:__ @nix_api_store\/realisation.h 53:1@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_store_query_realisation :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Generated.Nix.Store.Fwd.Store) -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Nix_realisation))
nix_store_query_realisation =
  RIP.unsafePerformIO hs_bindgen_88c292eb05880ac9

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_free@
foreign import ccall unsafe "hs_bindgen_1f2b32f63f633d59" hs_bindgen_1f2b32f63f633d59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_free@
hs_bindgen_1f2b32f63f633d59 :: IO (RIP.FunPtr ((RIP.Ptr Nix_realisation) -> IO ()))
hs_bindgen_1f2b32f63f633d59 =
  RIP.fromFFIType hs_bindgen_1f2b32f63f633d59_base

{-# NOINLINE nix_realisation_free #-}
{-| __C declaration:__ @nix_realisation_free@

    __defined at:__ @nix_api_store\/realisation.h 62:6@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_free :: RIP.FunPtr ((RIP.Ptr Nix_realisation) -> IO ())
nix_realisation_free =
  RIP.unsafePerformIO hs_bindgen_1f2b32f63f633d59

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_out_path@
foreign import ccall unsafe "hs_bindgen_24966a29dafa3ec7" hs_bindgen_24966a29dafa3ec7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_out_path@
hs_bindgen_24966a29dafa3ec7 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_realisation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_24966a29dafa3ec7 =
  RIP.fromFFIType hs_bindgen_24966a29dafa3ec7_base

{-# NOINLINE nix_realisation_get_out_path #-}
{-| __C declaration:__ @nix_realisation_get_out_path@

    __defined at:__ @nix_api_store\/realisation.h 72:13@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_get_out_path :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_realisation) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_realisation_get_out_path =
  RIP.unsafePerformIO hs_bindgen_24966a29dafa3ec7

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_signatures@
foreign import ccall unsafe "hs_bindgen_70e28b346ac8326d" hs_bindgen_70e28b346ac8326d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorerealisation_Generated.Nix.Store.Realisation_get_nix_realisation_get_signatures@
hs_bindgen_70e28b346ac8326d :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_realisation) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_70e28b346ac8326d =
  RIP.fromFFIType hs_bindgen_70e28b346ac8326d_base

{-# NOINLINE nix_realisation_get_signatures #-}
{-| __C declaration:__ @nix_realisation_get_signatures@

    __defined at:__ @nix_api_store\/realisation.h 90:9@

    __exported by:__ @nix_api_store\/realisation.h@
-}
nix_realisation_get_signatures :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst Nix_realisation) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_realisation_get_signatures =
  RIP.unsafePerformIO hs_bindgen_70e28b346ac8326d
