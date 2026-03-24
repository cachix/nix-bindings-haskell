{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Main.FunPtr
    ( Generated.Nix.Main.FunPtr.nix_init_plugins
    , Generated.Nix.Main.FunPtr.nix_set_log_format
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_main.h>"
  , "/* org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_init_plugins */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_1ec50f10d301b0a2 (void)) ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return &nix_init_plugins;"
  , "}"
  , "/* org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_set_log_format */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_6645d8b4e5832b6f (void)) ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &nix_set_log_format;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_init_plugins@
foreign import ccall unsafe "hs_bindgen_1ec50f10d301b0a2" hs_bindgen_1ec50f10d301b0a2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_init_plugins@
hs_bindgen_1ec50f10d301b0a2 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_1ec50f10d301b0a2 =
  RIP.fromFFIType hs_bindgen_1ec50f10d301b0a2_base

{-# NOINLINE nix_init_plugins #-}
{-| __C declaration:__ @nix_init_plugins@

    __defined at:__ @nix_api_main.h 31:9@

    __exported by:__ @nix_api_main.h@
-}
nix_init_plugins :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> IO Generated.Nix.Util.Nix_err)
nix_init_plugins =
  RIP.unsafePerformIO hs_bindgen_1ec50f10d301b0a2

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_set_log_format@
foreign import ccall unsafe "hs_bindgen_6645d8b4e5832b6f" hs_bindgen_6645d8b4e5832b6f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixmain_Generated.Nix.Main_get_nix_set_log_format@
hs_bindgen_6645d8b4e5832b6f :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_6645d8b4e5832b6f =
  RIP.fromFFIType hs_bindgen_6645d8b4e5832b6f_base

{-# NOINLINE nix_set_log_format #-}
{-| __C declaration:__ @nix_set_log_format@

    __defined at:__ @nix_api_main.h 39:9@

    __exported by:__ @nix_api_main.h@
-}
nix_set_log_format :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst RIP.CChar) -> IO Generated.Nix.Util.Nix_err)
nix_set_log_format =
  RIP.unsafePerformIO hs_bindgen_6645d8b4e5832b6f
