{-# LANGUAGE OverloadedStrings #-}

-- | Throwing interface to Nix values.
--
-- Accessor functions check the value's type before extracting,
-- throwing 'NixError' on type mismatch.
-- For unchecked accessors, use the @unsafe@-prefixed variants.
-- For safe accessors returning 'Either', use 'fromValue', 'getAttr', and 'getAttrPath'.
module Nix.C.Unsafe.Value
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
    -- * @ToValue@ — type-directed construction
  , ToValue (..)
    -- * Value construction
  , allocValue
  , mkInt
  , mkFloat
  , mkBool
  , mkNull
  , mkString
  , mkPath
  , mkList
  , mkAttrs
  , mkApply
  , copyValue
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
  , unsafeGetString
  , unsafeGetPathString
  , unsafeGetListSize
  , unsafeGetAttrsSize
  , unsafeHasAttrByName
  , unsafeLookupAttr
  , unsafeGetListByIdx
  ) where

import Control.Exception (finally, throwIO, try)
import Control.Monad (forM_, when)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Int (Int64)
import Data.Text (Text)
import qualified Data.Text.Encoding as T
import Foreign (Ptr, castPtr)
import Foreign.C (CDouble (..))
import Generated.Nix.Util (Nix_err (..))
import qualified Generated.Nix.Value.Safe as SysValue
import HsBindgen.Runtime.PtrConst (unsafeFromPtr, unsafeToPtr)
import Nix.C.Context
  ( NixError (..)
  , NixErrorKind (..)
  , checkError
  , checkNull
  , withCallbackBS
  )
import Nix.C.Unsafe.Expr (valueForce)
import Nix.C.Internal (CNixContext, CNixValue, EvalState (..), NixType (..), Value (..), byteStringToOsPath, castEvalPtr, osPathToByteString, toNixType)
import System.OsPath (OsPath)

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

-- | Throw a type mismatch error if the value is not the expected type.
checkType :: NixType -> EvalState -> Value -> IO ()
checkType expected es val = do
  actual <- getType es val
  when (actual /= expected) $
    throwIO $ NixTypeMismatch expected actual

-- | Run an accessor after checking the value's type.
withTypeCheck :: NixType -> (EvalState -> Value -> IO a) -> EvalState -> Value -> IO a
withTypeCheck ty f es val = checkType ty es val >> f es val

-- * Type inspection

-- | Get the type of a Nix value.
getType :: EvalState -> Value -> IO NixType
getType es (Value val) = do
  vt <- SysValue.nix_get_type (evalCtx es) (unsafeFromPtr val)
  pure (toNixType vt)

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
-- Throws on type mismatch.
--
-- Note: type check is mandatory — the C API crashes (assertion failure)
-- on wrong type.
getString :: EvalState -> Value -> IO ByteString
getString = withTypeCheck TypeString unsafeGetString

-- | Extract a string without checking the value's type.
-- Caller must ensure the value is 'TypeString', otherwise the
-- C API may crash (assertion failure).
unsafeGetString :: EvalState -> Value -> IO ByteString
unsafeGetString es (Value v) = do
  (Nix_err rc, bs) <- withCallbackBS $ \cb ud ->
    SysValue.nix_get_string (evalCtx es) (unsafeFromPtr v) cb (castPtr ud)
  checkError (evalCtx es) rc
  pure bs

-- | Extract a path from a Nix value as an 'OsPath'.
-- Throws on type mismatch.
--
-- Note: type check is mandatory — the C API crashes on wrong type.
getPathString :: EvalState -> Value -> IO OsPath
getPathString = withTypeCheck TypePath unsafeGetPathString

-- | Extract a path without checking the value's type.
-- Caller must ensure the value is 'TypePath', otherwise the
-- C API may crash.
unsafeGetPathString :: EvalState -> Value -> IO OsPath
unsafeGetPathString es (Value v) = do
  cstr <- SysValue.nix_get_path_string (evalCtx es) (unsafeFromPtr v)
  p <- checkNull (evalCtx es) (unsafeToPtr cstr)
  byteStringToOsPath <$> BS.packCString p

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
    Nothing -> throwIO $ NixMissingAttr name

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
-- Throws if the index is out of bounds, or on type mismatch.
getListByIdx :: EvalState -> Value -> Int -> IO Value
getListByIdx es val idx = do
  checkType TypeList es val
  size <- unsafeGetListSize es val
  when (idx < 0 || idx >= size) $
    throwIO $ NixIndexOutOfBounds idx
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

-- | Force and decode a Nix string as UTF-8 'Text'.
-- Throws 'NixCError' if the string is not valid UTF-8.
instance FromValue Text where
  unsafeForceGet es val = do
    bs <- unsafeForceGet es val
    case T.decodeUtf8' bs of
      Right t -> pure t
      Left _err -> throwIO $ NixCError NixErrUnknown "Nix string is not valid UTF-8" BS.empty

-- | Force and extract a Nix path value as an 'OsPath'.
instance FromValue OsPath where
  unsafeForceGet es val = valueForce es val >> getPathString es val

-- | Assert that a value is null. Throws on type mismatch.
instance FromValue () where
  unsafeForceGet es val = valueForce es val >> checkType TypeNull es val

-- | Force a value and return it. Useful in generic code.
instance FromValue Value where
  unsafeForceGet es val = valueForce es val >> pure val

-- | Extract all elements of a Nix list as unforced 'Value's.
instance FromValue [Value] where
  unsafeForceGet es val = do
    valueForce es val
    size <- getListSize es val
    mapM (unsafeGetListByIdx es val) [0 .. size - 1]

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

-- * Value construction

-- | Allocate a fresh, uninitialised Nix value.
allocValue :: EvalState -> IO Value
allocValue es = do
  val <- checkNull (evalCtx es)
    =<< SysValue.nix_alloc_value (evalCtx es) (castEvalPtr es)
  pure (Value val)

-- | Allocate a fresh value and initialise it with a C init function.
initValue :: EvalState -> (Ptr CNixContext -> Ptr CNixValue -> IO Nix_err) -> IO Value
initValue es f = do
  Value val <- allocValue es
  checkError (evalCtx es) . unwrapNix_err =<< f (evalCtx es) val
  pure (Value val)

-- | Construct a Nix integer value.
mkInt :: EvalState -> Int64 -> IO Value
mkInt es n = initValue es $ \ctx val ->
  SysValue.nix_init_int ctx val (fromIntegral n)

-- | Construct a Nix float value.
mkFloat :: EvalState -> Double -> IO Value
mkFloat es d = initValue es $ \ctx val ->
  SysValue.nix_init_float ctx val (CDouble d)

-- | Construct a Nix boolean value.
mkBool :: EvalState -> Bool -> IO Value
mkBool es b = initValue es $ \ctx val ->
  SysValue.nix_init_bool ctx val (if b then 1 else 0)

-- | Construct a Nix null value.
mkNull :: EvalState -> IO Value
mkNull es = initValue es $ \ctx val ->
  SysValue.nix_init_null ctx val

-- | Construct a Nix string value.
mkString :: EvalState -> ByteString -> IO Value
mkString es s = initValue es $ \ctx val ->
  BS.useAsCString s $ \cs ->
    SysValue.nix_init_string ctx val (unsafeFromPtr cs)

-- | Construct a Nix path value from an 'OsPath'.
mkPath :: EvalState -> OsPath -> IO Value
mkPath es p = initValue es $ \ctx val ->
  BS.useAsCString (osPathToByteString p) $ \cs ->
    SysValue.nix_init_path_string ctx (castEvalPtr es) val (unsafeFromPtr cs)

-- | Construct a Nix list value from a list of values.
mkList :: EvalState -> [Value] -> IO Value
mkList es elems = do
  builder <- checkNull (evalCtx es)
    =<< SysValue.nix_make_list_builder (evalCtx es) (castEvalPtr es) (fromIntegral (length elems))
  flip finally (SysValue.nix_list_builder_free builder) $ do
    forM_ (zip [0 :: Int ..] elems) $ \(i, Value v) ->
      checkError (evalCtx es) . unwrapNix_err
        =<< SysValue.nix_list_builder_insert (evalCtx es) builder (fromIntegral i) (castPtr v)
    initValue es $ \ctx val ->
      SysValue.nix_make_list ctx builder val

-- | Construct a Nix attribute set from a list of name-value pairs.
mkAttrs :: EvalState -> [(ByteString, Value)] -> IO Value
mkAttrs es pairs = do
  builder <- checkNull (evalCtx es)
    =<< SysValue.nix_make_bindings_builder (evalCtx es) (castEvalPtr es) (fromIntegral (length pairs))
  flip finally (SysValue.nix_bindings_builder_free builder) $ do
    forM_ pairs $ \(name, Value v) ->
      BS.useAsCString name $ \cName ->
        checkError (evalCtx es) . unwrapNix_err
          =<< SysValue.nix_bindings_builder_insert (evalCtx es) builder (unsafeFromPtr cName) (castPtr v)
    initValue es $ \ctx val ->
      SysValue.nix_make_attrs ctx val builder

-- | Construct a lazy function application value (thunk).
-- The function is not called immediately; the result is a thunk
-- that will be evaluated when forced.
mkApply :: EvalState -> Value -> Value -> IO Value
mkApply es (Value fn) (Value arg) = initValue es $ \ctx val ->
  SysValue.nix_init_apply ctx val (castPtr fn) (castPtr arg)

-- | Copy one Nix value into a fresh allocation.
copyValue :: EvalState -> Value -> IO Value
copyValue es (Value src) = initValue es $ \ctx dst ->
  SysValue.nix_copy_value ctx dst (unsafeFromPtr src)

-- * ToValue — type-directed construction

-- | Type class for constructing Nix values from Haskell values.
class ToValue a where
  toValue :: EvalState -> a -> IO Value

instance ToValue Int64 where
  toValue = mkInt

instance ToValue Double where
  toValue = mkFloat

instance ToValue Bool where
  toValue = mkBool

instance ToValue ByteString where
  toValue = mkString

-- | Encode 'Text' as UTF-8 and construct a Nix string value.
instance ToValue Text where
  toValue es t = mkString es (T.encodeUtf8 t)

-- | Construct a Nix path value from an 'OsPath'.
instance ToValue OsPath where
  toValue = mkPath

-- | @()@ maps to Nix @null@.
instance ToValue () where
  toValue es () = mkNull es

-- | Identity — return the value as-is.
instance ToValue Value where
  toValue _ v = pure v

-- | Construct a Nix list from a list of values.
instance ToValue [Value] where
  toValue = mkList

-- | Construct a Nix attribute set from name-value pairs.
instance ToValue [(ByteString, Value)] where
  toValue = mkAttrs
