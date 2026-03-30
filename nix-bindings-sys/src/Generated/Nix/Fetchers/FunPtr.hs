{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Fetchers.FunPtr
    ( Generated.Nix.Fetchers.FunPtr.nix_fetchers_settings_new
    , Generated.Nix.Fetchers.FunPtr.nix_fetchers_settings_free
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import Generated.Nix.Fetchers

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_fetchers.h>"
  , "/* org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_new */"
  , "__attribute__ ((const))"
  , "nix_fetchers_settings *(*hs_bindgen_d97b6368c4490612 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_fetchers_settings_new;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2eb5d8fe3f459a08 (void)) ("
  , "  nix_fetchers_settings *arg1"
  , ")"
  , "{"
  , "  return &nix_fetchers_settings_free;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_new@
foreign import ccall unsafe "hs_bindgen_d97b6368c4490612" hs_bindgen_d97b6368c4490612_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_new@
hs_bindgen_d97b6368c4490612 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_fetchers_settings)))
hs_bindgen_d97b6368c4490612 =
  RIP.fromFFIType hs_bindgen_d97b6368c4490612_base

{-# NOINLINE nix_fetchers_settings_new #-}
{-| __C declaration:__ @nix_fetchers_settings_new@

    __defined at:__ @nix_api_fetchers.h 24:25@

    __exported by:__ @nix_api_fetchers.h@
-}
nix_fetchers_settings_new :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO (RIP.Ptr Nix_fetchers_settings))
nix_fetchers_settings_new =
  RIP.unsafePerformIO hs_bindgen_d97b6368c4490612

-- __unique:__ @org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_free@
foreign import ccall unsafe "hs_bindgen_2eb5d8fe3f459a08" hs_bindgen_2eb5d8fe3f459a08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixfetchers_Generated.Nix.Fetchers_get_nix_fetchers_settings_free@
hs_bindgen_2eb5d8fe3f459a08 :: IO (RIP.FunPtr ((RIP.Ptr Nix_fetchers_settings) -> IO ()))
hs_bindgen_2eb5d8fe3f459a08 =
  RIP.fromFFIType hs_bindgen_2eb5d8fe3f459a08_base

{-# NOINLINE nix_fetchers_settings_free #-}
{-| __C declaration:__ @nix_fetchers_settings_free@

    __defined at:__ @nix_api_fetchers.h 26:6@

    __exported by:__ @nix_api_fetchers.h@
-}
nix_fetchers_settings_free :: RIP.FunPtr ((RIP.Ptr Nix_fetchers_settings) -> IO ())
nix_fetchers_settings_free =
  RIP.unsafePerformIO hs_bindgen_2eb5d8fe3f459a08
