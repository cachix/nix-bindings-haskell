{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Safe interface to Nix values.
-- Fallible functions throw 'Nix.Context.NixError' on failure.
module Nix.Value
  ( Value
  , NixType (..)
  , getType
  , getInt
  , getFloat
  , getBool
  , getString
  , getPathString
  , getListSize
  , getAttrsSize
  , hasAttrByName
  , getAttrByName
  , lookupAttr
  , getListByIdx
  ) where

import Control.Exception (throwIO)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Int (Int64)
import Foreign (FunPtr, Ptr)
import Foreign.C
  ( CBool (..)
  , CDouble (..)
  , CInt (..)
  , CString
  , CUInt (..)
  )
import Nix.Context
  ( NixError (..)
  , NixErrorKind (..)
  , StringCallback
  , checkError
  , checkNull
  , withCallbackBS
  )
import Nix.Internal (CEvalState, CNixContext, CNixValue, EvalState (..), Value (..))

-- | The type of a Nix value.
data NixType
  = TypeThunk
  | TypeInt
  | TypeFloat
  | TypeBool
  | TypeString
  | TypePath
  | TypeNull
  | TypeAttrs
  | TypeList
  | TypeFunction
  | TypeExternal
  | TypeFailed
  deriving (Show, Eq, Ord, Enum, Bounded)

-- FFI imports
foreign import capi "nix_api_value.h nix_get_type"
  c_nix_get_type :: Ptr CNixContext -> Ptr CNixValue -> IO CInt

foreign import capi "nix_api_value.h nix_get_int"
  c_nix_get_int :: Ptr CNixContext -> Ptr CNixValue -> IO Int64

foreign import capi "nix_api_value.h nix_get_float"
  c_nix_get_float :: Ptr CNixContext -> Ptr CNixValue -> IO CDouble

foreign import capi "nix_api_value.h nix_get_bool"
  c_nix_get_bool :: Ptr CNixContext -> Ptr CNixValue -> IO CBool

foreign import capi "nix_api_value.h nix_get_string"
  c_nix_get_string
    :: Ptr CNixContext -> Ptr CNixValue -> FunPtr StringCallback -> Ptr () -> IO CInt

foreign import capi "nix_api_value.h nix_get_path_string"
  c_nix_get_path_string :: Ptr CNixContext -> Ptr CNixValue -> IO CString

foreign import capi "nix_api_value.h nix_get_list_size"
  c_nix_get_list_size :: Ptr CNixContext -> Ptr CNixValue -> IO CUInt

foreign import capi "nix_api_value.h nix_get_attrs_size"
  c_nix_get_attrs_size :: Ptr CNixContext -> Ptr CNixValue -> IO CUInt

foreign import capi "nix_api_value.h nix_has_attr_byname"
  c_nix_has_attr_byname
    :: Ptr CNixContext -> Ptr CNixValue -> Ptr CEvalState -> CString -> IO CBool

foreign import capi "nix_api_value.h nix_get_attr_byname"
  c_nix_get_attr_byname
    :: Ptr CNixContext -> Ptr CNixValue -> Ptr CEvalState -> CString -> IO (Ptr CNixValue)

foreign import capi "nix_api_value.h nix_get_list_byidx"
  c_nix_get_list_byidx
    :: Ptr CNixContext -> Ptr CNixValue -> Ptr CEvalState -> CUInt -> IO (Ptr CNixValue)

toNixType :: CInt -> NixType
toNixType n
  | n >= 0 && n <= fromIntegral (fromEnum (maxBound :: NixType)) = toEnum (fromIntegral n)
  | otherwise = TypeFailed

-- | Get the type of a Nix value.
getType :: EvalState -> Value -> IO NixType
getType es (Value val) = toNixType <$> c_nix_get_type (evalCtx es) val

-- | Extract an integer from a Nix value.
getInt :: EvalState -> Value -> IO Int64
getInt es (Value val) = c_nix_get_int (evalCtx es) val

-- | Extract a float from a Nix value.
getFloat :: EvalState -> Value -> IO Double
getFloat es (Value val) = do
  CDouble d <- c_nix_get_float (evalCtx es) val
  pure d

-- | Extract a boolean from a Nix value.
getBool :: EvalState -> Value -> IO Bool
getBool es (Value val) = do
  b <- c_nix_get_bool (evalCtx es) val
  pure (b /= 0)

-- | Extract a string from a Nix value.
getString :: EvalState -> Value -> IO ByteString
getString es (Value val) = do
  (rc, bs) <- withCallbackBS $ \cb ud ->
    c_nix_get_string (evalCtx es) val cb ud
  checkError (evalCtx es) rc
  pure bs

-- | Extract a path string from a Nix value.
getPathString :: EvalState -> Value -> IO ByteString
getPathString es (Value val) = do
  cstr <- checkNull (evalCtx es) =<< c_nix_get_path_string (evalCtx es) val
  BS.packCString cstr

-- | Get the number of elements in a Nix list value.
getListSize :: EvalState -> Value -> IO Int
getListSize es (Value val) = fromIntegral <$> c_nix_get_list_size (evalCtx es) val

-- | Get the number of attributes in a Nix attribute set value.
getAttrsSize :: EvalState -> Value -> IO Int
getAttrsSize es (Value val) = fromIntegral <$> c_nix_get_attrs_size (evalCtx es) val

-- | Check if an attribute set has an attribute with the given name.
hasAttrByName :: EvalState -> Value -> ByteString -> IO Bool
hasAttrByName es (Value val) name =
  BS.useAsCString name $ \cName -> do
    b <- c_nix_has_attr_byname (evalCtx es) val (evalPtr es) cName
    pure (b /= 0)

-- | Get an attribute by name from an attribute set.
-- Throws 'NixError' with 'NixErrKey' if the attribute does not exist.
getAttrByName :: EvalState -> Value -> ByteString -> IO Value
getAttrByName es val name = do
  result <- lookupAttr es val name
  case result of
    Just v -> pure v
    Nothing -> throwIO $ NixError NixErrKey ("Attribute not found: " <> name) BS.empty

-- | Look up an attribute by name, returning 'Nothing' if absent.
-- Only throws on genuine errors, not for missing attributes.
lookupAttr :: EvalState -> Value -> ByteString -> IO (Maybe Value)
lookupAttr es (Value val) name = do
  exists <- hasAttrByName es (Value val) name
  if not exists
    then pure Nothing
    else BS.useAsCString name $ \cName -> do
      result <- checkNull (evalCtx es)
        =<< c_nix_get_attr_byname (evalCtx es) val (evalPtr es) cName
      pure (Just (Value result))

-- | Get a list element by index.
getListByIdx :: EvalState -> Value -> Int -> IO Value
getListByIdx es (Value val) idx = do
  result <- checkNull (evalCtx es)
    =<< c_nix_get_list_byidx (evalCtx es) val (evalPtr es) (fromIntegral idx)
  pure (Value result)
