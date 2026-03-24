{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Main.Safe
    ( Generated.Nix.Main.Safe.nix_init_plugins
    , Generated.Nix.Main.Safe.nix_set_log_format
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_main.h>"
  , "nix_err hs_bindgen_28e3aa9853a453a2 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_init_plugins)(arg1);"
  , "}"
  , "nix_err hs_bindgen_84c5d543125d9428 ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (nix_set_log_format)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_Safe_nix_init_plugins@
foreign import ccall safe "hs_bindgen_28e3aa9853a453a2" hs_bindgen_28e3aa9853a453a2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_Safe_nix_init_plugins@
hs_bindgen_28e3aa9853a453a2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_28e3aa9853a453a2 =
  RIP.fromFFIType hs_bindgen_28e3aa9853a453a2_base

{-| __C declaration:__ @nix_init_plugins@

    __defined at:__ @nix_api_main.h 31:9@

    __exported by:__ @nix_api_main.h@
-}
nix_init_plugins ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_init_plugins = hs_bindgen_28e3aa9853a453a2

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_Safe_nix_set_log_format@
foreign import ccall safe "hs_bindgen_84c5d543125d9428" hs_bindgen_84c5d543125d9428_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_Safe_nix_set_log_format@
hs_bindgen_84c5d543125d9428 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_84c5d543125d9428 =
  RIP.fromFFIType hs_bindgen_84c5d543125d9428_base

{-| __C declaration:__ @nix_set_log_format@

    __defined at:__ @nix_api_main.h 39:9@

    __exported by:__ @nix_api_main.h@
-}
nix_set_log_format ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @format@
  -> IO Generated.Nix.Util.Nix_err
nix_set_log_format = hs_bindgen_84c5d543125d9428
