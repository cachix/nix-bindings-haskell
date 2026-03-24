{-# LANGUAGE CApiFFI #-}

-- | Internal module for Nix C API error handling.
--
-- Provides managed error contexts that capture errors from C API calls
-- and translate them into Haskell exceptions.
module Nix.Context
  ( NixException (..)
  , withContext
  , withContext'
  , checkError
  , getErrorMsg
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

-- | Exception thrown when a Nix C API call fails.
data NixException = NixException
  { nixErrCode :: !Int
  , nixErrMessage :: !ByteString
  }
  deriving (Show)

instance Exception NixException

-- | Run an action with a fresh Nix error context.
-- If the action returns a non-zero error code, throw a 'NixException'.
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
  | otherwise = do
      msg <- getErrorMsg ctx
      throwIO $ NixException (fromIntegral rc) msg

-- | Extract the error message from a context.
getErrorMsg :: Ptr CNixContext -> IO ByteString
getErrorMsg ctx = do
  cstr <- c_nix_err_msg nullPtr ctx nullPtr
  if cstr == nullPtr
    then pure BS.empty
    else BS.packCString cstr

-- | Run an action that populates a string via the global 'StringCallback',
-- returning the captured bytes.
-- Allocates a 'StablePtr' to an 'IORef' for the duration of the call,
-- avoiding per-call 'FunPtr' allocation.
withCallbackBS :: (FunPtr StringCallback -> Ptr () -> IO a) -> IO ByteString
withCallbackBS f = do
  ref <- newIORef BS.empty
  bracket (newStablePtr ref) freeStablePtr $ \sptr -> do
    _ <- f globalStringCallback (castStablePtrToPtr sptr)
    readIORef ref
