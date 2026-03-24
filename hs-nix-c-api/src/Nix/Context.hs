{-# LANGUAGE CApiFFI #-}

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
  , StringCallback
  , c_nix_c_context_create
  , c_nix_c_context_free
  ) where

import Control.Exception (Exception, bracket, throwIO)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.IORef (IORef, newIORef, readIORef, writeIORef)
import Foreign (FunPtr, Ptr, nullPtr)
import Foreign.C (CInt (..), CString, CUInt (..))
import Foreign.StablePtr
  ( castPtrToStablePtr
  , castStablePtrToPtr
  , deRefStablePtr
  , freeStablePtr
  , newStablePtr
  )
import Nix.Internal (CNixContext)
import System.IO.Unsafe (unsafePerformIO)

-- FFI imports
foreign import capi "nix_api_util.h nix_c_context_create"
  c_nix_c_context_create :: IO (Ptr CNixContext)

foreign import capi "nix_api_util.h nix_c_context_free"
  c_nix_c_context_free :: Ptr CNixContext -> IO ()

foreign import capi "nix_api_util.h nix_err_msg"
  c_nix_err_msg
    :: Ptr CNixContext
    -> Ptr CNixContext
    -> Ptr CUInt
    -> IO CString

foreign import capi "nix_api_util.h nix_err_code"
  c_nix_err_code :: Ptr CNixContext -> IO CInt

foreign import capi "nix_api_util.h nix_err_info_msg"
  c_nix_err_info_msg
    :: Ptr CNixContext
    -> Ptr CNixContext
    -> FunPtr StringCallback
    -> Ptr ()
    -> IO CInt

-- | Callback type matching @nix_get_string_callback@.
type StringCallback = CString -> CUInt -> Ptr () -> IO ()

foreign import ccall "wrapper"
  mkStringCallback :: StringCallback -> IO (FunPtr StringCallback)

-- | Global string callback 'FunPtr', allocated once as a CAF.
-- Uses the @userData@ pointer (a 'StablePtr' to an 'IORef' 'ByteString')
-- to write the result, so the 'FunPtr' itself is stateless and reusable.
{-# NOINLINE globalStringCallback #-}
globalStringCallback :: FunPtr StringCallback
globalStringCallback = unsafePerformIO $ mkStringCallback $ \cstr len userData -> do
  ref <- deRefStablePtr (castPtrToStablePtr userData) :: IO (IORef ByteString)
  bs <- BS.packCStringLen (cstr, fromIntegral len)
  writeIORef ref bs

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
      rc <- maybe (c_nix_err_code ctx) pure mbRc
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
  cstr <- c_nix_err_msg nullPtr ctx nullPtr
  if cstr == nullPtr
    then pure BS.empty
    else BS.packCString cstr

-- | Extract the detailed error info message from a context.
-- Returns the empty bytestring if no info is available.
getErrorInfoMsg :: Ptr CNixContext -> IO ByteString
getErrorInfoMsg ctx =
  snd <$> withCallbackBS (\cb ud -> c_nix_err_info_msg nullPtr ctx cb ud)

-- | Run an action that populates a string via the global 'StringCallback',
-- returning both the action's result and the captured bytes.
-- Allocates a 'StablePtr' to an 'IORef' for the duration of the call,
-- avoiding per-call 'FunPtr' allocation.
withCallbackBS :: (FunPtr StringCallback -> Ptr () -> IO a) -> IO (a, ByteString)
withCallbackBS f = do
  ref <- newIORef BS.empty
  bracket (newStablePtr ref) freeStablePtr $ \sptr -> do
    a <- f globalStringCallback (castStablePtrToPtr sptr)
    bs <- readIORef ref
    pure (a, bs)
