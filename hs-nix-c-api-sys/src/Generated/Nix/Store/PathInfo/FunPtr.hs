{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.PathInfo.FunPtr
    ( Generated.Nix.Store.PathInfo.FunPtr.nix_store_query_path_info_json
    )
  where

import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.PathInfo

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/path_info.h>"
  , "/* org_cachix_hsnixcapi_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info_json */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_2530424863038460 (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3,"
  , "  nix_path_info_json_format arg4,"
  , "  nix_get_string_callback arg5,"
  , "  void *arg6"
  , ")"
  , "{"
  , "  return &nix_store_query_path_info_json;"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info_json@
foreign import ccall unsafe "hs_bindgen_2530424863038460" hs_bindgen_2530424863038460_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info_json@
hs_bindgen_2530424863038460 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> Nix_path_info_json_format -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_2530424863038460 =
  RIP.fromFFIType hs_bindgen_2530424863038460_base

{-# NOINLINE nix_store_query_path_info_json #-}
{-| __C declaration:__ @nix_store_query_path_info_json@

    __defined at:__ @nix_api_store\/path_info.h 75:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_store_query_path_info_json :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> Nix_path_info_json_format -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_store_query_path_info_json =
  RIP.unsafePerformIO hs_bindgen_2530424863038460
