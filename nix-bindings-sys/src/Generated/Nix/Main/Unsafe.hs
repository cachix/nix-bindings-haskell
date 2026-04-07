{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Main.Unsafe
    ( Generated.Nix.Main.Unsafe.nix_init_plugins
    , Generated.Nix.Main.Unsafe.nix_set_log_format
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_main.h>"
  , "nix_err hs_bindgen_7b64963bfc028f06 ("
  , "  nix_c_context *arg1"
  , ")"
  , "{"
  , "  return (nix_init_plugins)(arg1);"
  , "}"
  , "nix_err hs_bindgen_a677d27a413d086d ("
  , "  nix_c_context *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return (nix_set_log_format)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixmain_Generated.Nix.Main_Unsafe_nix_init_plugins@
foreign import ccall unsafe "hs_bindgen_7b64963bfc028f06" hs_bindgen_7b64963bfc028f06_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixmain_Generated.Nix.Main_Unsafe_nix_init_plugins@
hs_bindgen_7b64963bfc028f06 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_7b64963bfc028f06 =
  RIP.fromFFIType hs_bindgen_7b64963bfc028f06_base

{-| __C declaration:__ @nix_init_plugins@

    __defined at:__ @nix_api_main.h 31:9@

    __exported by:__ @nix_api_main.h@
-}
nix_init_plugins ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> IO Generated.Nix.Util.Nix_err
nix_init_plugins = hs_bindgen_7b64963bfc028f06

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixmain_Generated.Nix.Main_Unsafe_nix_set_log_format@
foreign import ccall unsafe "hs_bindgen_a677d27a413d086d" hs_bindgen_a677d27a413d086d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixmain_Generated.Nix.Main_Unsafe_nix_set_log_format@
hs_bindgen_a677d27a413d086d ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst RIP.CChar
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_a677d27a413d086d =
  RIP.fromFFIType hs_bindgen_a677d27a413d086d_base

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
nix_set_log_format = hs_bindgen_a677d27a413d086d
