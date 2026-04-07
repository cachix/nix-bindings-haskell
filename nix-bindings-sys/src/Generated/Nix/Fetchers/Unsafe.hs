{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Fetchers.Unsafe
    ( Generated.Nix.Fetchers.Unsafe.nix_fetchers_settings_new
    , Generated.Nix.Fetchers.Unsafe.nix_fetchers_settings_free
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import Generated.Nix.Fetchers

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_fetchers.h>"
  , "nix_fetchers_settings *hs_bindgen_f34c92b271e8214e ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_fetchers_settings_new)(arg1);"
  , "}"
  , "void hs_bindgen_fa35c08ffc0eb309 ("
  , "  nix_fetchers_settings *arg1"
  , ")"
  , "{"
  , "  (nix_fetchers_settings_free)(arg1);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixfetchers_Generated.Nix.Fetchers_Unsafe_nix_fetchers_settings_new@
foreign import ccall unsafe "hs_bindgen_f34c92b271e8214e" hs_bindgen_f34c92b271e8214e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixfetchers_Generated.Nix.Fetchers_Unsafe_nix_fetchers_settings_new@
hs_bindgen_f34c92b271e8214e ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO (RIP.Ptr Nix_fetchers_settings)
hs_bindgen_f34c92b271e8214e =
  RIP.fromFFIType hs_bindgen_f34c92b271e8214e_base

{-| __C declaration:__ @nix_fetchers_settings_new@

    __defined at:__ @nix_api_fetchers.h 24:25@

    __exported by:__ @nix_api_fetchers.h@
-}
nix_fetchers_settings_new ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO (RIP.Ptr Nix_fetchers_settings)
nix_fetchers_settings_new =
  hs_bindgen_f34c92b271e8214e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixfetchers_Generated.Nix.Fetchers_Unsafe_nix_fetchers_settings_free@
foreign import ccall unsafe "hs_bindgen_fa35c08ffc0eb309" hs_bindgen_fa35c08ffc0eb309_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixfetchers_Generated.Nix.Fetchers_Unsafe_nix_fetchers_settings_free@
hs_bindgen_fa35c08ffc0eb309 ::
     RIP.Ptr Nix_fetchers_settings
  -> IO ()
hs_bindgen_fa35c08ffc0eb309 =
  RIP.fromFFIType hs_bindgen_fa35c08ffc0eb309_base

{-| __C declaration:__ @nix_fetchers_settings_free@

    __defined at:__ @nix_api_fetchers.h 26:6@

    __exported by:__ @nix_api_fetchers.h@
-}
nix_fetchers_settings_free ::
     RIP.Ptr Nix_fetchers_settings
     -- ^ __C declaration:__ @settings@
  -> IO ()
nix_fetchers_settings_free =
  hs_bindgen_fa35c08ffc0eb309
