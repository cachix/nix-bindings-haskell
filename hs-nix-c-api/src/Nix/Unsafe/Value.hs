{-# LANGUAGE OverloadedStrings #-}

-- | Throwing interface to Nix values.
--
-- Accessor functions check the value's type before extracting,
-- throwing 'NixError' on type mismatch.
-- For unchecked accessors, use the @unsafe@-prefixed variants.
-- For safe accessors returning 'Either', use 'fromValue', 'getAttr', and 'getAttrPath'.
module Nix.Unsafe.Value
  ( Value
  , NixType (..)
    -- * Type inspection
  , getType
  , nixTypeName
    -- * @FromValue@ — type-directed extraction
  , FromValue (..)
  , fromValue
  , getAttr
  , getAttrPath
    -- * Throwing value extraction (type-checked)
  , getInt
  , getFloat
  , getBool
  , getString
  , getPathString
    -- * Throwing collection accessors (type-checked)
  , getListSize
  , getAttrsSize
  , hasAttrByName
  , getAttrByName
  , lookupAttr
  , getListByIdx
    -- * Unchecked value extraction (caller must ensure correct type)
  , unsafeGetInt
  , unsafeGetFloat
  , unsafeGetBool
  , unsafeGetListSize
  , unsafeGetAttrsSize
  , unsafeHasAttrByName
  , unsafeLookupAttr
  , unsafeGetListByIdx
  ) where

import Control.Exception (throwIO, try)
import Control.Monad (when)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Int (Int64)
import Foreign (castPtr)
import Foreign.C (CDouble (..))
import Generated.Nix.Util (Nix_err (..))
import Generated.Nix.Value (ValueType (..))
import qualified Generated.Nix.Value.Safe as SysValue
import HsBindgen.Runtime.PtrConst (unsafeFromPtr, unsafeToPtr)
import Nix.Context
  ( NixError (..)
  , NixErrorKind (..)
  , checkError
  , checkNull
  , withCallbackBS
  )
import Nix.Unsafe.Expr (valueForce)
import Nix.Internal (EvalState (..), Value (..), castEvalPtr)

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

-- | Human-readable name for a Nix type.
nixTypeName :: NixType -> ByteString
nixTypeName TypeThunk = "thunk"
nixTypeName TypeInt = "int"
nixTypeName TypeFloat = "float"
nixTypeName TypeBool = "bool"
nixTypeName TypeString = "string"
nixTypeName TypePath = "path"
nixTypeName TypeNull = "null"
nixTypeName TypeAttrs = "attrs"
nixTypeName TypeList = "list"
nixTypeName TypeFunction = "function"
nixTypeName TypeExternal = "external"
nixTypeName TypeFailed = "failed"

toNixType :: Int -> NixType
toNixType n
  | n >= 0 && n <= fromEnum (maxBound :: NixType) = toEnum n
  | otherwise = TypeFailed

-- | Throw a type mismatch error if the value is not the expected type.
checkType :: NixType -> EvalState -> Value -> IO ()
checkType expected es val = do
  actual <- getType es val
  when (actual /= expected) $
    throwIO $
      NixError
        NixErrNixError
        ("Type mismatch: expected " <> nixTypeName expected <> ", got " <> nixTypeName actual)
        BS.empty

-- | Run an accessor after checking the value's type.
withTypeCheck :: NixType -> (EvalState -> Value -> IO a) -> EvalState -> Value -> IO a
withTypeCheck ty f es val = checkType ty es val >> f es val

-- * Type inspection

-- | Get the type of a Nix value.
getType :: EvalState -> Value -> IO NixType
getType es (Value val) = do
  vt <- SysValue.nix_get_type (evalCtx es) (unsafeFromPtr val)
  -- ValueType is a newtype over CUInt; extract and convert
  let n = fromIntegral (unwrapValueType vt)
  pure (toNixType n)

-- * Safe value extraction (type-checked)

-- | Extract an integer from a Nix value.
-- Throws on type mismatch.
getInt :: EvalState -> Value -> IO Int64
getInt = withTypeCheck TypeInt unsafeGetInt

-- | Extract a float from a Nix value.
-- Throws on type mismatch.
getFloat :: EvalState -> Value -> IO Double
getFloat = withTypeCheck TypeFloat unsafeGetFloat

-- | Extract a boolean from a Nix value.
-- Throws on type mismatch.
getBool :: EvalState -> Value -> IO Bool
getBool = withTypeCheck TypeBool unsafeGetBool

-- | Extract a string from a Nix value.
-- Throws on type mismatch (via C API error).
getString :: EvalState -> Value -> IO ByteString
getString es (Value v) = do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    SysValue.nix_get_string (evalCtx es) (unsafeFromPtr v) cb (castPtr ud)
  checkError (evalCtx es) rc
  pure bs

-- | Extract a path string from a Nix value.
-- Throws on type mismatch (via C API error).
getPathString :: EvalState -> Value -> IO ByteString
getPathString es (Value v) = do
  cstr <- SysValue.nix_get_path_string (evalCtx es) (unsafeFromPtr v)
  p <- checkNull (evalCtx es) (unsafeToPtr cstr)
  BS.packCString p

-- * Safe collection accessors (type-checked)

-- | Get the number of elements in a Nix list value.
-- Throws on type mismatch.
getListSize :: EvalState -> Value -> IO Int
getListSize = withTypeCheck TypeList unsafeGetListSize

-- | Get the number of attributes in a Nix attribute set value.
-- Throws on type mismatch.
getAttrsSize :: EvalState -> Value -> IO Int
getAttrsSize = withTypeCheck TypeAttrs unsafeGetAttrsSize

-- | Check if an attribute set has an attribute with the given name.
-- Throws on type mismatch.
hasAttrByName :: EvalState -> Value -> ByteString -> IO Bool
hasAttrByName es val name = do
  checkType TypeAttrs es val
  unsafeHasAttrByName es val name

-- | Get an attribute by name from an attribute set.
-- Throws 'NixError' with 'NixErrKey' if the attribute does not exist.
-- Throws on type mismatch.
getAttrByName :: EvalState -> Value -> ByteString -> IO Value
getAttrByName es val name = do
  result <- lookupAttr es val name
  case result of
    Just v -> pure v
    Nothing -> throwIO $ NixError NixErrKey ("Attribute not found: " <> name) BS.empty

-- | Look up an attribute by name, returning 'Nothing' if absent.
-- Only throws on genuine errors (e.g. type mismatch), not for missing attributes.
-- Throws on type mismatch.
--
-- Note: This makes two C API calls (has + get) because @nix_get_attr_byname@
-- crashes the process when called for a missing attribute.
lookupAttr :: EvalState -> Value -> ByteString -> IO (Maybe Value)
lookupAttr es val name = do
  checkType TypeAttrs es val
  unsafeLookupAttr es val name

-- | Get a list element by index.
-- Throws if the index is negative or out of bounds, or on type mismatch.
getListByIdx :: EvalState -> Value -> Int -> IO Value
getListByIdx es val idx = do
  checkType TypeList es val
  when (idx < 0) $
    throwIO $ NixError NixErrUnknown "List index out of bounds" BS.empty
  unsafeGetListByIdx es val idx

-- * Unchecked value extraction

-- | Extract an integer without checking the value's type.
-- Caller must ensure the value is 'TypeInt', otherwise behaviour is undefined.
unsafeGetInt :: EvalState -> Value -> IO Int64
unsafeGetInt es (Value val) =
  fromIntegral <$> SysValue.nix_get_int (evalCtx es) (unsafeFromPtr val)

-- | Extract a float without checking the value's type.
-- Caller must ensure the value is 'TypeFloat', otherwise behaviour is undefined.
unsafeGetFloat :: EvalState -> Value -> IO Double
unsafeGetFloat es (Value val) = do
  CDouble d <- SysValue.nix_get_float (evalCtx es) (unsafeFromPtr val)
  pure d

-- | Extract a boolean without checking the value's type.
-- Caller must ensure the value is 'TypeBool', otherwise behaviour is undefined.
unsafeGetBool :: EvalState -> Value -> IO Bool
unsafeGetBool es (Value val) = do
  b <- SysValue.nix_get_bool (evalCtx es) (unsafeFromPtr val)
  pure (b /= 0)

-- | Get the list size without checking the value's type.
-- Caller must ensure the value is 'TypeList', otherwise behaviour is undefined.
unsafeGetListSize :: EvalState -> Value -> IO Int
unsafeGetListSize es (Value val) =
  fromIntegral <$> SysValue.nix_get_list_size (evalCtx es) (unsafeFromPtr val)

-- | Get the attribute set size without checking the value's type.
-- Caller must ensure the value is 'TypeAttrs', otherwise behaviour is undefined.
unsafeGetAttrsSize :: EvalState -> Value -> IO Int
unsafeGetAttrsSize es (Value val) =
  fromIntegral <$> SysValue.nix_get_attrs_size (evalCtx es) (unsafeFromPtr val)

-- | Check attribute existence without checking the value's type.
-- Caller must ensure the value is 'TypeAttrs', otherwise behaviour is undefined.
unsafeHasAttrByName :: EvalState -> Value -> ByteString -> IO Bool
unsafeHasAttrByName es (Value val) name =
  BS.useAsCString name $ \cName -> do
    b <- SysValue.nix_has_attr_byname (evalCtx es) (unsafeFromPtr val) (castEvalPtr es) (unsafeFromPtr cName)
    pure (b /= 0)

-- | Look up an attribute without checking the value's type.
-- Caller must ensure the value is 'TypeAttrs', otherwise behaviour is undefined.
--
-- Makes two C API calls (has + get) because @nix_get_attr_byname@
-- crashes the process when called for a missing attribute.
unsafeLookupAttr :: EvalState -> Value -> ByteString -> IO (Maybe Value)
unsafeLookupAttr es (Value val) name =
  BS.useAsCString name $ \cName -> do
    b <- SysValue.nix_has_attr_byname (evalCtx es) (unsafeFromPtr val) (castEvalPtr es) (unsafeFromPtr cName)
    if b == 0
      then pure Nothing
      else do
        result <- checkNull (evalCtx es)
          =<< SysValue.nix_get_attr_byname (evalCtx es) (unsafeFromPtr val) (castEvalPtr es) (unsafeFromPtr cName)
        pure (Just (Value result))

-- | Get a list element by index without checking the value's type.
-- Caller must ensure the value is 'TypeList' and the index is valid,
-- otherwise behaviour is undefined.
unsafeGetListByIdx :: EvalState -> Value -> Int -> IO Value
unsafeGetListByIdx es (Value val) idx = do
  result <- checkNull (evalCtx es)
    =<< SysValue.nix_get_list_byidx (evalCtx es) (unsafeFromPtr val) (castEvalPtr es) (fromIntegral idx)
  pure (Value result)

-- * FromValue — type-directed extraction

-- | Type class for extracting Haskell values from Nix values.
--
-- Use 'fromValue' for a safe API returning 'Either', or 'unsafeForceGet'
-- directly for a throwing variant.
--
-- @
-- n <- fromValue \@Int64 state val    -- Right 42
-- s <- fromValue \@ByteString state val  -- Left (NixError ...)
-- @
class FromValue a where
  -- | Force a Nix value and extract it as a Haskell value.
  -- Caller must handle 'NixError' exceptions; prefer 'fromValue' instead.
  unsafeForceGet :: EvalState -> Value -> IO a

instance FromValue Int64 where
  unsafeForceGet es val = valueForce es val >> getInt es val

instance FromValue Double where
  unsafeForceGet es val = valueForce es val >> getFloat es val

instance FromValue Bool where
  unsafeForceGet es val = valueForce es val >> getBool es val

instance FromValue ByteString where
  unsafeForceGet es val = valueForce es val >> getString es val

-- | Force and extract a Haskell value from a Nix value.
-- Returns 'Left' on type mismatch or other errors.
fromValue :: FromValue a => EvalState -> Value -> IO (Either NixError a)
fromValue es val = try @NixError $ unsafeForceGet es val

-- | Extract a typed value from an attribute set by name.
-- Forces the attribute before extraction.
-- Returns 'Left' if the attribute is missing, the value is not an attrset,
-- or the attribute has the wrong type.
getAttr :: FromValue a => EvalState -> Value -> ByteString -> IO (Either NixError a)
getAttr es val name = try @NixError $ do
  attr <- getAttrByName es val name
  unsafeForceGet es attr

-- | Extract a typed value from a nested attribute path.
-- Forces each intermediate attribute set.
-- Returns 'Left' if any attribute is missing or has the wrong type.
--
-- @
-- n <- getAttrPath \@Int64 state val [\"a\", \"b\", \"c\"]
-- @
getAttrPath :: FromValue a => EvalState -> Value -> [ByteString] -> IO (Either NixError a)
getAttrPath es val path = try @NixError $ go es val path
 where
  go es' val' [] = unsafeForceGet es' val'
  go es' val' (name : rest) = do
    attr <- getAttrByName es' val' name
    valueForce es' attr
    go es' attr rest
