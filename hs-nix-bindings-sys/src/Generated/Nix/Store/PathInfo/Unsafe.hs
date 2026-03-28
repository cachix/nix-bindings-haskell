{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.PathInfo.Unsafe
    ( Generated.Nix.Store.PathInfo.Unsafe.nix_store_query_path_info_json
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
  , "nix_err hs_bindgen_e968e373614a4ba2 ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3,"
  , "  nix_path_info_json_format arg4,"
  , "  nix_get_string_callback arg5,"
  , "  void *arg6"
  , ")"
  , "{"
  , "  return (nix_store_query_path_info_json)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_store_query_path_info_json@
foreign import ccall unsafe "hs_bindgen_e968e373614a4ba2" hs_bindgen_e968e373614a4ba2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_Unsafe_nix_store_query_path_info_json@
hs_bindgen_e968e373614a4ba2 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> RIP.Ptr Store
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
  -> Nix_path_info_json_format
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_e968e373614a4ba2 =
  RIP.fromFFIType hs_bindgen_e968e373614a4ba2_base

{-| __C declaration:__ @nix_store_query_path_info_json@

    __defined at:__ @nix_api_store\/path_info.h 75:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_store_query_path_info_json ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> RIP.Ptr Store
     -- ^ __C declaration:__ @store@
  -> PtrConst.PtrConst Generated.Nix.Store.Path.StorePath
     -- ^ __C declaration:__ @store_path@
  -> Nix_path_info_json_format
     -- ^ __C declaration:__ @format@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO Generated.Nix.Util.Nix_err
nix_store_query_path_info_json =
  hs_bindgen_e968e373614a4ba2
