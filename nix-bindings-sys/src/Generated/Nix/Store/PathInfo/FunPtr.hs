{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.PathInfo.FunPtr
    ( Generated.Nix.Store.PathInfo.FunPtr.nix_store_query_path_info
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_free
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_nar_hash
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_nar_size
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_references
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_deriver
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_sigs
    , Generated.Nix.Store.PathInfo.FunPtr.nix_path_info_get_ca
    )
  where

import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.PathInfo

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/path_info.h>"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info */"
  , "__attribute__ ((const))"
  , "PathInfo *(*hs_bindgen_1fac601246ab382e (void)) ("
  , "  nix_c_context *arg1,"
  , "  Store *arg2,"
  , "  StorePath const *arg3"
  , ")"
  , "{"
  , "  return &nix_store_query_path_info;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_free */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bf7b3ada2aad9194 (void)) ("
  , "  PathInfo *arg1"
  , ")"
  , "{"
  , "  return &nix_path_info_free;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_hash */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_8f065cc3b62b6ac4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_path_info_get_nar_hash;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_size */"
  , "__attribute__ ((const))"
  , "uint64_t (*hs_bindgen_aa0ae4d4f1c93bb4 (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return &nix_path_info_get_nar_size;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_references */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_82d094ffa72087ea (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  void *arg1,"
  , "  StorePath const *arg2"
  , ")"
  , ")"
  , "{"
  , "  return &nix_path_info_get_references;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_deriver */"
  , "__attribute__ ((const))"
  , "StorePath *(*hs_bindgen_b21e41546dbe97fa (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2"
  , ")"
  , "{"
  , "  return &nix_path_info_get_deriver;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_sigs */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_2de3dfbe7da2edf5 (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  void *arg3,"
  , "  void (*arg4) ("
  , "  void *arg1,"
  , "  char const *arg2,"
  , "  unsigned int arg3"
  , ")"
  , ")"
  , "{"
  , "  return &nix_path_info_get_sigs;"
  , "}"
  , "/* org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_ca */"
  , "__attribute__ ((const))"
  , "nix_err (*hs_bindgen_178f5a43f6f01f0c (void)) ("
  , "  nix_c_context *arg1,"
  , "  PathInfo const *arg2,"
  , "  nix_get_string_callback arg3,"
  , "  void *arg4"
  , ")"
  , "{"
  , "  return &nix_path_info_get_ca;"
  , "}"
  ]))

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info@
foreign import ccall unsafe "hs_bindgen_1fac601246ab382e" hs_bindgen_1fac601246ab382e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_store_query_path_info@
hs_bindgen_1fac601246ab382e :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr PathInfo)))
hs_bindgen_1fac601246ab382e =
  RIP.fromFFIType hs_bindgen_1fac601246ab382e_base

{-# NOINLINE nix_store_query_path_info #-}
{-| __C declaration:__ @nix_store_query_path_info@

    __defined at:__ @nix_api_store\/path_info.h 40:12@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_store_query_path_info :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr Store) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO (RIP.Ptr PathInfo))
nix_store_query_path_info =
  RIP.unsafePerformIO hs_bindgen_1fac601246ab382e

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_free@
foreign import ccall unsafe "hs_bindgen_bf7b3ada2aad9194" hs_bindgen_bf7b3ada2aad9194_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_free@
hs_bindgen_bf7b3ada2aad9194 :: IO (RIP.FunPtr ((RIP.Ptr PathInfo) -> IO ()))
hs_bindgen_bf7b3ada2aad9194 =
  RIP.fromFFIType hs_bindgen_bf7b3ada2aad9194_base

{-# NOINLINE nix_path_info_free #-}
{-| __C declaration:__ @nix_path_info_free@

    __defined at:__ @nix_api_store\/path_info.h 48:6@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_free :: RIP.FunPtr ((RIP.Ptr PathInfo) -> IO ())
nix_path_info_free =
  RIP.unsafePerformIO hs_bindgen_bf7b3ada2aad9194

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_hash@
foreign import ccall unsafe "hs_bindgen_8f065cc3b62b6ac4" hs_bindgen_8f065cc3b62b6ac4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_hash@
hs_bindgen_8f065cc3b62b6ac4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_8f065cc3b62b6ac4 =
  RIP.fromFFIType hs_bindgen_8f065cc3b62b6ac4_base

{-# NOINLINE nix_path_info_get_nar_hash #-}
{-| __C declaration:__ @nix_path_info_get_nar_hash@

    __defined at:__ @nix_api_store\/path_info.h 62:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_nar_hash :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_path_info_get_nar_hash =
  RIP.unsafePerformIO hs_bindgen_8f065cc3b62b6ac4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_size@
foreign import ccall unsafe "hs_bindgen_aa0ae4d4f1c93bb4" hs_bindgen_aa0ae4d4f1c93bb4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_nar_size@
hs_bindgen_aa0ae4d4f1c93bb4 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> IO HsBindgen.Runtime.LibC.Word64))
hs_bindgen_aa0ae4d4f1c93bb4 =
  RIP.fromFFIType hs_bindgen_aa0ae4d4f1c93bb4_base

{-# NOINLINE nix_path_info_get_nar_size #-}
{-| __C declaration:__ @nix_path_info_get_nar_size@

    __defined at:__ @nix_api_store\/path_info.h 72:10@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_nar_size :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> IO HsBindgen.Runtime.LibC.Word64)
nix_path_info_get_nar_size =
  RIP.unsafePerformIO hs_bindgen_aa0ae4d4f1c93bb4

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_references@
foreign import ccall unsafe "hs_bindgen_82d094ffa72087ea" hs_bindgen_82d094ffa72087ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_references@
hs_bindgen_82d094ffa72087ea :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_82d094ffa72087ea =
  RIP.fromFFIType hs_bindgen_82d094ffa72087ea_base

{-# NOINLINE nix_path_info_get_references #-}
{-| __C declaration:__ @nix_path_info_get_references@

    __defined at:__ @nix_api_store\/path_info.h 86:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_references :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst Generated.Nix.Store.Path.StorePath) -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_path_info_get_references =
  RIP.unsafePerformIO hs_bindgen_82d094ffa72087ea

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_deriver@
foreign import ccall unsafe "hs_bindgen_b21e41546dbe97fa" hs_bindgen_b21e41546dbe97fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_deriver@
hs_bindgen_b21e41546dbe97fa :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath)))
hs_bindgen_b21e41546dbe97fa =
  RIP.fromFFIType hs_bindgen_b21e41546dbe97fa_base

{-# NOINLINE nix_path_info_get_deriver #-}
{-| __C declaration:__ @nix_path_info_get_deriver@

    __defined at:__ @nix_api_store\/path_info.h 100:13@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_deriver :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> IO (RIP.Ptr Generated.Nix.Store.Path.StorePath))
nix_path_info_get_deriver =
  RIP.unsafePerformIO hs_bindgen_b21e41546dbe97fa

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_sigs@
foreign import ccall unsafe "hs_bindgen_2de3dfbe7da2edf5" hs_bindgen_2de3dfbe7da2edf5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_sigs@
hs_bindgen_2de3dfbe7da2edf5 :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> IO ())) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_2de3dfbe7da2edf5 =
  RIP.fromFFIType hs_bindgen_2de3dfbe7da2edf5_base

{-# NOINLINE nix_path_info_get_sigs #-}
{-| __C declaration:__ @nix_path_info_get_sigs@

    __defined at:__ @nix_api_store\/path_info.h 113:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_sigs :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> (RIP.Ptr RIP.Void) -> (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> IO ())) -> IO Generated.Nix.Util.Nix_err)
nix_path_info_get_sigs =
  RIP.unsafePerformIO hs_bindgen_2de3dfbe7da2edf5

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_ca@
foreign import ccall unsafe "hs_bindgen_178f5a43f6f01f0c" hs_bindgen_178f5a43f6f01f0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @org_cachix_nixbindingshaskell_generatednixstorepathinfo_Generated.Nix.Store.PathInfo_get_nix_path_info_get_ca@
hs_bindgen_178f5a43f6f01f0c :: IO (RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err))
hs_bindgen_178f5a43f6f01f0c =
  RIP.fromFFIType hs_bindgen_178f5a43f6f01f0c_base

{-# NOINLINE nix_path_info_get_ca #-}
{-| __C declaration:__ @nix_path_info_get_ca@

    __defined at:__ @nix_api_store\/path_info.h 131:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
nix_path_info_get_ca :: RIP.FunPtr ((RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (PtrConst.PtrConst PathInfo) -> Generated.Nix.Util.Nix_get_string_callback -> (RIP.Ptr RIP.Void) -> IO Generated.Nix.Util.Nix_err)
nix_path_info_get_ca =
  RIP.unsafePerformIO hs_bindgen_178f5a43f6f01f0c
