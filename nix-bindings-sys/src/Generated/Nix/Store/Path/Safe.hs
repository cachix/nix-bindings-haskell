{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Nix.Store.Path.Safe
    ( Generated.Nix.Store.Path.Safe.nix_store_path_clone
    , Generated.Nix.Store.Path.Safe.nix_store_path_free
    , Generated.Nix.Store.Path.Safe.nix_store_path_name
    , Generated.Nix.Store.Path.Safe.nix_store_path_hash
    , Generated.Nix.Store.Path.Safe.nix_store_create_from_parts
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.IncompleteArray as IA
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.IsArray as IsA
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Nix.Store.Path

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <nix_api_store/store_path.h>"
  , "StorePath *hs_bindgen_da5a195d6bda41e0 ("
  , "  StorePath const *arg1"
  , ")"
  , "{"
  , "  return (nix_store_path_clone)(arg1);"
  , "}"
  , "void hs_bindgen_313f6eaa72a5a4e6 ("
  , "  StorePath *arg1"
  , ")"
  , "{"
  , "  (nix_store_path_free)(arg1);"
  , "}"
  , "void hs_bindgen_269a960745198ebd ("
  , "  StorePath const *arg1,"
  , "  nix_get_string_callback arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (nix_store_path_name)(arg1, arg2, arg3);"
  , "}"
  , "nix_err hs_bindgen_c8243bae3f31966a ("
  , "  nix_c_context *arg1,"
  , "  StorePath const *arg2,"
  , "  nix_store_path_hash_part *arg3"
  , ")"
  , "{"
  , "  return (nix_store_path_hash)(arg1, arg2, arg3);"
  , "}"
  , "StorePath *hs_bindgen_3318aec01b094b54 ("
  , "  nix_c_context *arg1,"
  , "  nix_store_path_hash_part const *arg2,"
  , "  char const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return (nix_store_create_from_parts)(arg1, arg2, arg3, arg4);"
  , "}"
  ]))

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_clone@
foreign import ccall safe "hs_bindgen_da5a195d6bda41e0" hs_bindgen_da5a195d6bda41e0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_clone@
hs_bindgen_da5a195d6bda41e0 ::
     PtrConst.PtrConst StorePath
  -> IO (RIP.Ptr StorePath)
hs_bindgen_da5a195d6bda41e0 =
  RIP.fromFFIType hs_bindgen_da5a195d6bda41e0_base

{-| __C declaration:__ @nix_store_path_clone@

    __defined at:__ @nix_api_store\/store_path.h 32:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_clone ::
     PtrConst.PtrConst StorePath
     -- ^ __C declaration:__ @p@
  -> IO (RIP.Ptr StorePath)
nix_store_path_clone = hs_bindgen_da5a195d6bda41e0

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_free@
foreign import ccall safe "hs_bindgen_313f6eaa72a5a4e6" hs_bindgen_313f6eaa72a5a4e6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_free@
hs_bindgen_313f6eaa72a5a4e6 ::
     RIP.Ptr StorePath
  -> IO ()
hs_bindgen_313f6eaa72a5a4e6 =
  RIP.fromFFIType hs_bindgen_313f6eaa72a5a4e6_base

{-| __C declaration:__ @nix_store_path_free@

    __defined at:__ @nix_api_store\/store_path.h 39:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_free ::
     RIP.Ptr StorePath
     -- ^ __C declaration:__ @p@
  -> IO ()
nix_store_path_free = hs_bindgen_313f6eaa72a5a4e6

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_name@
foreign import ccall safe "hs_bindgen_269a960745198ebd" hs_bindgen_269a960745198ebd_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_name@
hs_bindgen_269a960745198ebd ::
     PtrConst.PtrConst StorePath
  -> Generated.Nix.Util.Nix_get_string_callback
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_269a960745198ebd =
  RIP.fromFFIType hs_bindgen_269a960745198ebd_base

{-| __C declaration:__ @nix_store_path_name@

    __defined at:__ @nix_api_store\/store_path.h 48:6@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_name ::
     PtrConst.PtrConst StorePath
     -- ^ __C declaration:__ @store_path@
  -> Generated.Nix.Util.Nix_get_string_callback
     -- ^ __C declaration:__ @callback@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
nix_store_path_name = hs_bindgen_269a960745198ebd

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_hash@
foreign import ccall safe "hs_bindgen_c8243bae3f31966a" hs_bindgen_c8243bae3f31966a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_path_hash@
hs_bindgen_c8243bae3f31966a ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst StorePath
  -> RIP.Ptr Nix_store_path_hash_part
  -> IO Generated.Nix.Util.Nix_err
hs_bindgen_c8243bae3f31966a =
  RIP.fromFFIType hs_bindgen_c8243bae3f31966a_base

{-| __C declaration:__ @nix_store_path_hash@

    __defined at:__ @nix_api_store\/store_path.h 71:1@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_path_hash ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst StorePath
     -- ^ __C declaration:__ @store_path@
  -> RIP.Ptr Nix_store_path_hash_part
     -- ^ __C declaration:__ @hash_part_out@
  -> IO Generated.Nix.Util.Nix_err
nix_store_path_hash = hs_bindgen_c8243bae3f31966a

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_create_from_parts@
foreign import ccall safe "hs_bindgen_3318aec01b094b54" hs_bindgen_3318aec01b094b54_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word64
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @org_cachix_hsnixcapi_generatednixstorepath_Generated.Nix.Store.Path_Safe_nix_store_create_from_parts@
hs_bindgen_3318aec01b094b54 ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
  -> PtrConst.PtrConst Nix_store_path_hash_part
  -> PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))
  -> HsBindgen.Runtime.LibC.CSize
  -> IO (RIP.Ptr StorePath)
hs_bindgen_3318aec01b094b54 =
  RIP.fromFFIType hs_bindgen_3318aec01b094b54_base

{-| __C declaration:__ @nix_store_create_from_parts@

    __defined at:__ @nix_api_store\/store_path.h 86:13@

    __exported by:__ @nix_api_store\/store_path.h@
-}
nix_store_create_from_parts ::
     RIP.Ptr Generated.Nix.Util.Nix_c_context
     -- ^ __C declaration:__ @context@
  -> PtrConst.PtrConst Nix_store_path_hash_part
     -- ^ __C declaration:__ @hash@
  -> PtrConst.PtrConst (IsA.Elem (IA.IncompleteArray RIP.CChar))
     -- ^ __C declaration:__ @name@
  -> HsBindgen.Runtime.LibC.CSize
     -- ^ __C declaration:__ @name_len@
  -> IO (RIP.Ptr StorePath)
nix_store_create_from_parts =
  hs_bindgen_3318aec01b094b54
