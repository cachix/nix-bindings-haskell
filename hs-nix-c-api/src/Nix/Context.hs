-- | Internal module for Nix C API error handling.
--
-- Provides managed error contexts that capture errors from C API calls
-- and translate them into Haskell exceptions.
module Nix.Context
  ( NixErrorKind (..)
  , NixError (..)
  , withContext
  , withContext'
  , checkError
  , checkNull
  , getErrorMsg
  , getErrorInfoMsg
  , withCallbackBS
  , c_nix_c_context_create
  , c_nix_c_context_free
  ) where

import Control.Exception (Exception, bracket, throwIO)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.IORef (IORef, newIORef, readIORef, writeIORef)
import Foreign (FunPtr, Ptr, castFunPtr, castPtr, nullPtr)
import Foreign.C (CInt (..), CString, CUInt (..))
import Foreign.StablePtr
  ( castPtrToStablePtr
  , castStablePtrToPtr
  , deRefStablePtr
  , freeStablePtr
  , newStablePtr
  )
import Generated.Nix.Util
  ( Nix_err (..)
  , Nix_get_string_callback (..)
  )
import qualified Generated.Nix.Util.Safe as Sys
import HsBindgen.Runtime.PtrConst (unsafeFromPtr, unsafeToPtr)
import Nix.Internal (CNixContext)
import System.IO.Unsafe (unsafePerformIO)

-- | Allocate a new Nix error context.
c_nix_c_context_create :: IO (Ptr CNixContext)
c_nix_c_context_create = Sys.nix_c_context_create

-- | Free a Nix error context.
c_nix_c_context_free :: Ptr CNixContext -> IO ()
c_nix_c_context_free = Sys.nix_c_context_free

-- Raw callback type matching the C signature.
type RawCallback = CString -> CUInt -> Ptr () -> IO ()

foreign import ccall "wrapper"
  mkRawCallback :: RawCallback -> IO (FunPtr RawCallback)

-- | Global string callback, allocated once as a CAF.
-- Each call site passes its own 'IORef' via the userData pointer,
-- so concurrent calls are safe.
{-# NOINLINE globalStringCallback #-}
globalStringCallback :: Nix_get_string_callback
globalStringCallback = unsafePerformIO $ do
  fp <- mkRawCallback $ \cstr len userData -> do
    ref <- deRefStablePtr (castPtrToStablePtr userData) :: IO (IORef ByteString)
    bs <- BS.packCStringLen (cstr, fromIntegral len)
    writeIORef ref bs
  -- castFunPtr is safe: the C-level function signatures are identical,
  -- only the Haskell type wrappers differ (CString vs PtrConst CChar, etc.)
  pure $ Nix_get_string_callback (castFunPtr fp)

-- | Error category from the Nix C API.
data NixErrorKind
  = NixErrUnknown
  -- ^ Generic or unclassified error.
  | NixErrOverflow
  -- ^ Integer overflow.
  | NixErrKey
  -- ^ Key or attribute lookup failure.
  | NixErrNixError
  -- ^ Nix evaluation error (syntax, type, missing file, etc.).
  | NixErrRecoverable
  -- ^ Recoverable error.
  deriving (Show, Eq, Ord, Bounded, Enum)

-- | Convert a raw C error code to a 'NixErrorKind'.
toNixErrorKind :: CInt -> NixErrorKind
toNixErrorKind (-1) = NixErrUnknown
toNixErrorKind (-2) = NixErrOverflow
toNixErrorKind (-3) = NixErrKey
toNixErrorKind (-4) = NixErrNixError
toNixErrorKind (-5) = NixErrRecoverable
toNixErrorKind _ = NixErrUnknown

-- | Error thrown when a Nix C API call fails.
data NixError = NixError
  { nixErrorKind :: !NixErrorKind
  , nixErrorMessage :: !ByteString
  , nixErrorInfo :: !ByteString
  -- ^ Additional context (stack trace, source location).
  -- Empty if not available.
  }
  deriving (Show, Eq)

instance Exception NixError

-- | Build a 'NixError' from a context, optionally using a known error code.
-- Only reads detailed info if the context has a non-empty error message,
-- since @nix_err_info_msg@ crashes on contexts with no error.
buildError :: Ptr CNixContext -> Maybe CInt -> IO NixError
buildError ctx mbRc = do
  msg <- getErrorMsg ctx
  if BS.null msg
    then pure $ NixError NixErrUnknown BS.empty BS.empty
    else do
      rc <- maybe (unwrapNix_err <$> Sys.nix_err_code (unsafeFromPtr ctx)) pure mbRc
      info <- getErrorInfoMsg ctx
      pure $ NixError (toNixErrorKind rc) msg info

-- | Run an action with a fresh Nix error context.
-- If the action returns a non-zero error code, throw a 'NixError'.
withContext :: (Ptr CNixContext -> IO CInt) -> IO ()
withContext f = withContext' $ \ctx -> do
  rc <- f ctx
  checkError ctx rc

-- | Run an action with a fresh Nix error context, returning its result.
withContext' :: (Ptr CNixContext -> IO a) -> IO a
withContext' = bracket c_nix_c_context_create c_nix_c_context_free

-- | Check the return code and throw if non-zero.
checkError :: Ptr CNixContext -> CInt -> IO ()
checkError ctx rc
  | rc == 0 = pure ()
  | otherwise = throwIO =<< buildError ctx (Just rc)

-- | Check a pointer for null and throw if null.
-- Reads the error information from the context.
checkNull :: Ptr CNixContext -> Ptr a -> IO (Ptr a)
checkNull ctx ptr
  | ptr == nullPtr = throwIO =<< buildError ctx Nothing
  | otherwise = pure ptr

-- | Extract the error message from a context.
getErrorMsg :: Ptr CNixContext -> IO ByteString
getErrorMsg ctx = do
  cstr <- Sys.nix_err_msg nullPtr (unsafeFromPtr ctx) nullPtr
  let p = unsafeToPtr cstr
  if p == nullPtr
    then pure BS.empty
    else BS.packCString p

-- | Extract the detailed error info message from a context.
-- Returns the empty bytestring if no info is available.
getErrorInfoMsg :: Ptr CNixContext -> IO ByteString
getErrorInfoMsg ctx =
  snd <$> withCallbackBS (\cb ud ->
    Sys.nix_err_info_msg nullPtr (unsafeFromPtr ctx) cb (castPtr ud))

-- | Run an action that populates a string via the global string callback,
-- returning both the action's result and the captured bytes.
-- Allocates a 'StablePtr' to an 'IORef' for the duration of the call,
-- avoiding per-call 'FunPtr' allocation.
withCallbackBS
  :: (Nix_get_string_callback -> Ptr () -> IO a)
  -> IO (a, ByteString)
withCallbackBS f = do
  ref <- newIORef BS.empty
  bracket (newStablePtr ref) freeStablePtr $ \sptr -> do
    a <- f globalStringCallback (castStablePtrToPtr sptr)
    bs <- readIORef ref
    pure (a, bs)
