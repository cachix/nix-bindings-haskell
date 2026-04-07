-- | Throwing interface to the Nix store.
-- All functions throw 'Nix.C.Context.NixError' on failure.
module Nix.C.Unsafe.Store
  ( Store
  , StorePath
  , withStore
  , openStore
  , closeStore
  , storeReference
  , storeDir
  , storeVersion
  , isValidPath
  , parseStorePath
  , parseStorePath'
  , freeStorePath
  , storePathName
  , storeRealise
  , storeRealise_
  , copyPath
  , copyClosure
  , storeRealPath
  , storePathHash
  , computeFSClosure
  , queryPathInfo
  ) where

import Control.Exception (SomeException, bracket, bracketOnError, throwIO, try)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BS8
import Data.IORef (IORef, modifyIORef', newIORef, readIORef, writeIORef)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T
import Foreign (FunPtr, Ptr, alloca, castFunPtr, castPtr, finalizeForeignPtr, freeHaskellFunPtr, newForeignPtr, newForeignPtr_, nullPtr, peek, withForeignPtr)
import Foreign.C (CChar, CUInt (..))
import Foreign.Marshal.Utils (fromBool)
import qualified Generated.Nix.Store.Path.FunPtr as FPStorePath
import Generated.Nix.Store.Path (Nix_store_path_hash_part (..))
import Generated.Nix.Util (Nix_err (..), Nix_get_string_callback)
import qualified Generated.Nix.Store.PathInfo as CPI
import qualified Generated.Nix.Store.PathInfo.Safe as SysPathInfo
import qualified Generated.Nix.Store.Safe as SysStore
import qualified Generated.Nix.Store.Path.Safe as SysStorePath
import qualified Generated.Nix.Util.Safe as SysUtil
import qualified HsBindgen.Runtime.ConstantArray as CA
import HsBindgen.Runtime.PtrConst (unsafeFromPtr)
import Nix.C.Context (NixError (..), NixErrorKind (..), checkError, checkNull, withCallbackBS, withContext')
import Nix.C.Internal (CNixContext, CStore, CStorePath, Store (..), StorePath (..), byteStringToOsPath, osPathToByteString)
import Nix.C.Hash (parseHash)
import Nix.C.Store.PathInfo (PathInfo (..))
import Nix.C.Store.Reference (StoreReference, parseStoreReference)
import System.OsPath (OsPath)

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
--
-- The 'Store' handle is __not thread-safe__.
-- Do not use it concurrently from multiple threads.
withStore :: ByteString -> (Store -> IO a) -> IO a
withStore uri = bracket (openStore uri) closeStore

openStore :: ByteString -> IO Store
openStore uri =
  bracketOnError SysUtil.nix_c_context_create SysUtil.nix_c_context_free $ \ctx -> do
    ptr <- BS.useAsCString uri $ \cUri ->
      SysStore.nix_store_open ctx (unsafeFromPtr cUri) nullPtr
    p <- checkNull ctx ptr
    pure (Store p ctx)

closeStore :: Store -> IO ()
closeStore store = do
  SysStore.nix_store_free (storePtr store)
  SysUtil.nix_c_context_free (storeCtx store)

getStoreString
  :: (Ptr CNixContext -> Ptr CStore -> Nix_get_string_callback -> Ptr a -> IO Nix_err)
  -> Store
  -> IO ByteString
getStoreString f store = do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    f (storeCtx store) (storePtr store) cb (castPtr ud)
  checkError (storeCtx store) rc
  pure bs

-- | Get the store reference.
--
-- Parses the raw string from @nix_store_get_uri@ into a structured
-- 'StoreReference'.
-- Throws 'NixCError' if the raw string cannot be parsed.
storeReference :: Store -> IO StoreReference
storeReference store = do
  raw <- getStoreString SysStore.nix_store_get_uri store
  case parseStoreReference raw of
    Right ref -> pure ref
    Left err -> throwIO $ NixCError NixErrUnknown (BS8.pack "storeReference: " <> err) BS.empty

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> IO OsPath
storeDir store = byteStringToOsPath <$> getStoreString SysStore.nix_store_get_storedir store

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> IO ByteString
storeVersion = getStoreString SysStore.nix_store_get_version

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> IO Bool
isValidPath store (StorePath spFP) =
  withForeignPtr spFP $ \sp -> do
    result <- SysStore.nix_store_is_valid_path (storeCtx store) (storePtr store) (unsafeFromPtr sp)
    pure (result /= 0)

-- | Parse a store path and run an action with it.
-- The 'StorePath' is freed immediately after the callback for deterministic cleanup.
parseStorePath :: Store -> OsPath -> (StorePath -> IO a) -> IO a
parseStorePath store path f =
  bracket (parseStorePath' store path) freeStorePath f

-- | Parse a store path string into a 'StorePath'.
-- The returned 'StorePath' is automatically freed when garbage collected.
-- Use 'freeStorePath' for immediate deterministic cleanup.
parseStorePath' :: Store -> OsPath -> IO StorePath
parseStorePath' store path =
  BS.useAsCString (osPathToByteString path) $ \cPath -> do
    ptr <- checkNull (storeCtx store)
      =<< SysStore.nix_store_parse_path (storeCtx store) (storePtr store) (unsafeFromPtr cPath)
    StorePath <$> newForeignPtr (castFunPtr FPStorePath.nix_store_path_free) ptr

-- | Free a 'StorePath' immediately.
-- This is optional; the 'StorePath' will be freed by the GC if not called.
freeStorePath :: StorePath -> IO ()
freeStorePath (StorePath sp) = finalizeForeignPtr sp

-- | Get the name component of a store path.
storePathName :: StorePath -> IO ByteString
storePathName (StorePath spFP) =
  withForeignPtr spFP $ \sp ->
    snd <$> withCallbackBS (\cb ud ->
      SysStorePath.nix_store_path_name (unsafeFromPtr sp) cb (castPtr ud))

type RawRealiseCallback = Ptr () -> Ptr CChar -> Ptr CStorePath -> IO ()

foreign import ccall "wrapper"
  mkRealiseCallback :: RawRealiseCallback -> IO (FunPtr RawRealiseCallback)

-- | Build/realise a store path.
-- Calls the callback for each output (name, output store path).
--
-- The 'StorePath' passed to the callback is only valid for the duration
-- of that callback invocation.
-- Do not retain it after the callback returns.
--
-- Exceptions from the callback are caught (to prevent propagation through
-- C frames) and re-thrown after the C call returns.
-- After the first callback failure, subsequent callbacks are skipped.
storeRealise :: Store -> StorePath -> ((ByteString, StorePath) -> IO ()) -> IO ()
storeRealise store (StorePath spFP) callback =
  withForeignPtr spFP $ \sp -> do
    errRef <- newIORef (Nothing :: Maybe SomeException)
    bracket (mkRealiseCallback (wrapper errRef)) freeHaskellFunPtr $ \cb -> do
      Nix_err rc <- SysStore.nix_store_realise
        (storeCtx store) (storePtr store) sp nullPtr (castFunPtr cb)
      checkError (storeCtx store) rc
      readIORef errRef >>= mapM_ throwIO
 where
  wrapper errRef _userData cName cPath = do
    prev <- readIORef errRef
    case prev of
      Just _ -> pure ()
      Nothing -> do
        result <- try @SomeException $ do
          name <- BS.packCString cName
          borrowed <- newForeignPtr_ cPath
          callback (name, StorePath borrowed)
        case result of
          Left ex -> writeIORef errRef (Just ex)
          Right () -> pure ()


-- | Build/realise a store path, ignoring output details.
storeRealise_ :: Store -> StorePath -> IO ()
storeRealise_ store sp =
  storeRealise store sp (\_ -> pure ())

-- | Copy a store path from one store to another.
copyPath
  :: Store
  -- ^ Source store
  -> Store
  -- ^ Destination store
  -> StorePath
  -> Bool
  -- ^ Repair
  -> Bool
  -- ^ Check signatures
  -> IO ()
copyPath src dst (StorePath spFP) repair checkSigs =
  withForeignPtr spFP $ \sp -> do
    Nix_err rc <- SysStore.nix_store_copy_path
      (storeCtx src) (storePtr src) (storePtr dst) (unsafeFromPtr sp)
      (fromBool repair) (fromBool checkSigs)
    checkError (storeCtx src) rc

-- | Copy a store path and all its dependencies from one store to another.
copyClosure :: Store -> Store -> StorePath -> IO ()
copyClosure src dst (StorePath spFP) =
  withForeignPtr spFP $ \sp -> do
    Nix_err rc <- SysStore.nix_store_copy_closure
      (storeCtx src) (storePtr src) (storePtr dst) sp
    checkError (storeCtx src) rc

-- * Path info

-- | Query store path metadata using the accessor-based C API.
--
-- Calls @nix_store_query_path_info@ to obtain an opaque @PathInfo@
-- struct, then uses the individual @nix_path_info_get_*@ accessors
-- to extract each field into a Haskell 'PathInfo' record.
queryPathInfo :: Store -> StorePath -> IO PathInfo
queryPathInfo store (StorePath spFP) =
  withForeignPtr spFP $ \sp ->
    bracket
      (checkNull (storeCtx store)
        =<< SysPathInfo.nix_store_query_path_info
              (storeCtx store) (castPtr (storePtr store)) (unsafeFromPtr sp))
      SysPathInfo.nix_path_info_free
      (extractPathInfo store)

extractPathInfo :: Store -> Ptr CPI.PathInfo -> IO PathInfo
extractPathInfo store piPtr = do
  let ctx = storeCtx store
      cpi = unsafeFromPtr piPtr

  -- NAR hash (Nix32 string via callback)
  (Nix_err hashRc, narHashBS) <- withCallbackBS $ \cb ud ->
    SysPathInfo.nix_path_info_get_nar_hash ctx cpi cb (castPtr ud)
  checkError ctx hashRc
  narHash <- case parseHash (T.decodeUtf8 narHashBS) of
    Left err -> throwIO $ NixHashError err
    Right h -> pure h

  -- NAR size
  narSize <- SysPathInfo.nix_path_info_get_nar_size ctx cpi

  -- References
  refsRef <- newIORef []
  bracket (mkRefsCallback (refsHandler refsRef)) freeHaskellFunPtr $ \cb -> do
    Nix_err refsRc <- SysPathInfo.nix_path_info_get_references
      ctx cpi nullPtr (castFunPtr cb)
    checkError ctx refsRc
  refs <- reverse <$> readIORef refsRef

  -- Deriver
  deriverCPtr <- SysPathInfo.nix_path_info_get_deriver ctx cpi
  deriver <- if deriverCPtr == nullPtr
    then pure Nothing
    else Just . StorePath <$> newForeignPtr (castFunPtr FPStorePath.nix_store_path_free) deriverCPtr

  -- Signatures
  sigsRef <- newIORef []
  bracket (mkSigsCallback (sigsHandler sigsRef)) freeHaskellFunPtr $ \cb -> do
    Nix_err sigsRc <- SysPathInfo.nix_path_info_get_sigs
      ctx cpi nullPtr (castFunPtr cb)
    checkError ctx sigsRc
  sigs <- reverse <$> readIORef sigsRef

  -- Content address
  (Nix_err caRc, caBS) <- withCallbackBS $ \cb ud ->
    SysPathInfo.nix_path_info_get_ca ctx cpi cb (castPtr ud)
  checkError ctx caRc
  let ca = if BS.null caBS then Nothing else Just (T.decodeUtf8 caBS)

  pure PathInfo
    { pathInfoNarHash = narHash
    , pathInfoNarSize = narSize
    , pathInfoReferences = refs
    , pathInfoCa = ca
    , pathInfoDeriver = deriver
    , pathInfoSignatures = sigs
    }

-- * References callback

type RawRefsCallback = Ptr () -> Ptr CStorePath -> IO ()

foreign import ccall "wrapper"
  mkRefsCallback :: RawRefsCallback -> IO (FunPtr RawRefsCallback)

refsHandler :: IORef [StorePath] -> RawRefsCallback
refsHandler ref _userData spPtr = collectStorePath ref spPtr

-- * Signatures callback

type RawSigsCallback = Ptr () -> Ptr CChar -> CUInt -> IO ()

foreign import ccall "wrapper"
  mkSigsCallback :: RawSigsCallback -> IO (FunPtr RawSigsCallback)

sigsHandler :: IORef [T.Text] -> RawSigsCallback
sigsHandler ref _userData cStr len = do
  bs <- BS.packCStringLen (cStr, fromIntegral len)
  modifyIORef' ref (T.decodeUtf8 bs :)

-- | Clone a C store path pointer and collect it into an 'IORef' list.
collectStorePath :: IORef [StorePath] -> Ptr CStorePath -> IO ()
collectStorePath ref spPtr = do
  cloned <- SysStorePath.nix_store_path_clone (unsafeFromPtr spPtr)
  sp <- StorePath <$> newForeignPtr (castFunPtr FPStorePath.nix_store_path_free) cloned
  modifyIORef' ref (sp :)

-- | Get the real (resolved) filesystem path of a store path.
--
-- For a local store, this returns the full path such as
-- @\/nix\/store\/abc...-name@.
storeRealPath :: Store -> StorePath -> IO OsPath
storeRealPath store (StorePath spFP) =
  withForeignPtr spFP $ \sp -> do
    (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
      SysStore.nix_store_real_path
        (storeCtx store) (storePtr store) sp cb (castPtr ud)
    checkError (storeCtx store) rc
    pure (byteStringToOsPath bs)

-- | Get the raw hash bytes (20 bytes) of a store path.
--
-- This is the binary hash, not the nix-base32 encoded version.
-- Use 'Nix.C.Hash.Nix32.encode' to get the human-readable
-- nix-base32 representation.
storePathHash :: StorePath -> IO ByteString
storePathHash (StorePath spFP) =
  withForeignPtr spFP $ \sp ->
    withContext' $ \ctx ->
      alloca $ \hashOut -> do
        Nix_err rc <- SysStorePath.nix_store_path_hash ctx (unsafeFromPtr sp) hashOut
        checkError ctx rc
        Nix_store_path_hash_part rawBytes <- peek hashOut
        pure $ BS.pack $ CA.toList rawBytes

type RawClosureCallback = Ptr CNixContext -> Ptr () -> Ptr CStorePath -> IO ()

foreign import ccall "wrapper"
  mkClosureCallback :: RawClosureCallback -> IO (FunPtr RawClosureCallback)

-- | Compute the transitive closure of a store path's dependencies.
--
-- Returns all store paths reachable from the given path,
-- following the references graph.
computeFSClosure :: Store -> StorePath -> IO [StorePath]
computeFSClosure store (StorePath spFP) =
  withForeignPtr spFP $ \sp -> do
    ref <- newIORef []
    bracket (mkClosureCallback (closureHandler ref)) freeHaskellFunPtr $ \cb -> do
      Nix_err rc <- SysStore.nix_store_get_fs_closure
        (storeCtx store) (storePtr store) (unsafeFromPtr sp)
        0 -- flip_direction
        0 -- include_outputs
        0 -- include_derivers
        nullPtr
        (castFunPtr cb)
      checkError (storeCtx store) rc
    readIORef ref
 where
  closureHandler :: IORef [StorePath] -> RawClosureCallback
  closureHandler ref _ctx _ud spPtr = collectStorePath ref spPtr
