-- | Haskell bindings to the Nix C API.
--
-- This module provides a safe, monadic API via the 'Nix' monad.
-- For a throwing IO API, use "Nix.Unsafe" instead.
--
-- @
-- {-# LANGUAGE OverloadedStrings #-}
-- import Nix
--
-- main :: IO ()
-- main = do
--   result <- 'runNix' $ do
--     'initNix'
--     'withStore' "local" $ \\store ->
--       'withEvalState' store $ \\state -> do
--         val <- 'evalFromString' state "1 + 2" "."
--         'valueForce' state val
--         'getInt' state val
--   print result  -- Right 3
-- @
module Nix
  ( -- * The Nix monad
    Nix
  , runNix
  , runNixThrow
  , liftNix

    -- * Error types
  , NixError (..)
  , NixErrorKind (..)

    -- * Types
  , Store
  , StorePath
  , EvalState
  , Value
  , NixType (..)

    -- * Initialization
  , initNix
  , nixVersion

    -- * Store operations
  , withStore
  , storeUri
  , storeDir
  , storeVersion
  , isValidPath
  , parseStorePath
  , storePathName
  , storeRealise
  , storeRealise_
  , copyPath
  , copyClosure

    -- * Expression evaluation
  , withEvalState
  , withEvalStateWith
  , evalFromString
  , valueForce
  , valueForceDeep

    -- * Value extraction
  , getType
  , FromValue (..)
  , fromValue
  , getAttr
  , getAttrPath
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

    -- * Value construction
  , ToValue (..)
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
  , valueCall
  , valueCallMulti

    -- * Garbage collection
  , gcIncRef
  , gcDecRef
  , gcNow

    -- * Settings
  , getSetting
  , setSetting

    -- * Flake operations
  , FlakeSettings
  , FetchersSettings
  , FlakeReference
  , LockedFlake
  , LockMode (..)
  , withFlakeSettings
  , withFetchersSettings
  , withFlakeEvalState
  , parseFlakeReference
  , lockFlake
  , getFlakeOutputs
  ) where

import Control.Monad.IO.Class (liftIO)
import Data.ByteString (ByteString)
import Data.Int (Int64)
import Foreign (Ptr)
import Nix.Context (NixError (..), NixErrorKind (..))
import qualified Nix.Unsafe.Expr as Unsafe
import qualified Nix.Unsafe.Flake as Unsafe
import qualified Nix.Unsafe.GC as Unsafe
import qualified Nix.Unsafe.Init as Unsafe
import qualified Nix.Unsafe.Settings as Unsafe
import Nix.Internal (EvalState, FetchersSettings, FlakeReference, FlakeSettings, LockedFlake, Store, StorePath, Value)
import Nix.Monad (Nix, liftEitherNix, liftNix, runNix, runNixThrow, withBracketNix)
import qualified Nix.Unsafe.Store as Unsafe
import qualified Nix.Unsafe.Value as Unsafe
import Nix.Unsafe.Flake (LockMode (..))
import Nix.Unsafe.Value (FromValue (..), NixType (..), ToValue (..))

-- * Initialization

-- | Initialize all Nix libraries.
-- This is idempotent and safe to call multiple times.
initNix :: Nix ()
initNix = liftNix Unsafe.initNix

-- | Get the Nix version string.
nixVersion :: Nix ByteString
nixVersion = liftIO Unsafe.nixVersion

-- * Store operations

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
withStore :: ByteString -> (Store -> Nix a) -> Nix a
withStore uri f = withBracketNix (Unsafe.openStore uri) Unsafe.closeStore f

-- | Get the URI of the store.
storeUri :: Store -> Nix ByteString
storeUri = liftNix . Unsafe.storeUri

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> Nix ByteString
storeDir = liftNix . Unsafe.storeDir

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> Nix ByteString
storeVersion = liftNix . Unsafe.storeVersion

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> Nix Bool
isValidPath store sp = liftIO $ Unsafe.isValidPath store sp

-- | Parse a store path string into a 'StorePath'.
-- The returned 'StorePath' is automatically freed when garbage collected.
parseStorePath :: Store -> ByteString -> Nix StorePath
parseStorePath store path = liftNix $ Unsafe.parseStorePath' store path

-- | Get the name component of a store path.
storePathName :: StorePath -> Nix ByteString
storePathName = liftIO . Unsafe.storePathName

-- | Build/realise a store path.
-- Calls the callback for each output (name, output store path).
--
-- The 'StorePath' passed to the callback is only valid for the duration
-- of that callback invocation.
-- Do not retain it after the callback returns.
storeRealise :: Store -> StorePath -> ((ByteString, StorePath) -> IO ()) -> Nix ()
storeRealise store sp callback = liftNix $ Unsafe.storeRealise store sp callback

-- | Build/realise a store path, ignoring output details.
storeRealise_ :: Store -> StorePath -> Nix ()
storeRealise_ store sp = liftNix $ Unsafe.storeRealise_ store sp

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
  -> Nix ()
copyPath src dst sp repair checkSigs =
  liftNix $ Unsafe.copyPath src dst sp repair checkSigs

-- | Copy a store path and all its dependencies from one store to another.
copyClosure :: Store -> Store -> StorePath -> Nix ()
copyClosure src dst sp = liftNix $ Unsafe.copyClosure src dst sp

-- * Expression evaluation

-- | Create an evaluator state and run an action with it.
-- The state is automatically freed when the action completes.
withEvalState :: Store -> (EvalState -> Nix a) -> Nix a
withEvalState store f = withBracketNix (Unsafe.createEvalState store) Unsafe.destroyEvalState f

-- | Create an evaluator state with a custom lookup path and run an action with it.
-- The lookup path entries should be in the form @"name=\/path"@.
withEvalStateWith :: Store -> [ByteString] -> (EvalState -> Nix a) -> Nix a
withEvalStateWith store lookupPath f =
  withBracketNix (Unsafe.createEvalStateWith store lookupPath) Unsafe.destroyEvalState f

-- | Parse and evaluate a Nix expression from a string.
--
-- The @path@ argument is used to resolve relative paths in the expression.
evalFromString :: EvalState -> ByteString -> ByteString -> Nix Value
evalFromString es expr path = liftNix $ Unsafe.evalFromString es expr path

-- | Force evaluation of a lazy value.
valueForce :: EvalState -> Value -> Nix ()
valueForce es val = liftNix $ Unsafe.valueForce es val

-- | Recursively force evaluation of a value and all its sub-values.
valueForceDeep :: EvalState -> Value -> Nix ()
valueForceDeep es val = liftNix $ Unsafe.valueForceDeep es val

-- * Value extraction

-- | Get the type of a Nix value.
getType :: EvalState -> Value -> Nix NixType
getType es val = liftIO $ Unsafe.getType es val

-- | Force and extract a Haskell value from a Nix value.
-- Short-circuits in the 'Nix' monad on type mismatch or other errors.
fromValue :: FromValue a => EvalState -> Value -> Nix a
fromValue es val = liftEitherNix $ Unsafe.fromValue es val

-- | Extract a typed value from an attribute set by name.
-- Forces the attribute before extraction.
getAttr :: FromValue a => EvalState -> Value -> ByteString -> Nix a
getAttr es val name = liftEitherNix $ Unsafe.getAttr es val name

-- | Extract a typed value from a nested attribute path.
-- Forces each intermediate attribute set.
getAttrPath :: FromValue a => EvalState -> Value -> [ByteString] -> Nix a
getAttrPath es val path = liftEitherNix $ Unsafe.getAttrPath es val path

-- | Extract an integer from a Nix value.
-- Fails on type mismatch.
getInt :: EvalState -> Value -> Nix Int64
getInt es val = liftNix $ Unsafe.getInt es val

-- | Extract a float from a Nix value.
-- Fails on type mismatch.
getFloat :: EvalState -> Value -> Nix Double
getFloat es val = liftNix $ Unsafe.getFloat es val

-- | Extract a boolean from a Nix value.
-- Fails on type mismatch.
getBool :: EvalState -> Value -> Nix Bool
getBool es val = liftNix $ Unsafe.getBool es val

-- | Extract a string from a Nix value.
getString :: EvalState -> Value -> Nix ByteString
getString es val = liftNix $ Unsafe.getString es val

-- | Extract a path string from a Nix value.
getPathString :: EvalState -> Value -> Nix ByteString
getPathString es val = liftNix $ Unsafe.getPathString es val

-- | Get the number of elements in a Nix list value.
-- Fails on type mismatch.
getListSize :: EvalState -> Value -> Nix Int
getListSize es val = liftNix $ Unsafe.getListSize es val

-- | Get the number of attributes in a Nix attribute set value.
-- Fails on type mismatch.
getAttrsSize :: EvalState -> Value -> Nix Int
getAttrsSize es val = liftNix $ Unsafe.getAttrsSize es val

-- | Check if an attribute set has an attribute with the given name.
-- Fails on type mismatch.
hasAttrByName :: EvalState -> Value -> ByteString -> Nix Bool
hasAttrByName es val name = liftNix $ Unsafe.hasAttrByName es val name

-- | Get an attribute by name from an attribute set.
-- Returns an error if the attribute does not exist.
getAttrByName :: EvalState -> Value -> ByteString -> Nix Value
getAttrByName es val name = liftNix $ Unsafe.getAttrByName es val name

-- | Look up an attribute by name, returning 'Nothing' if absent.
-- Only fails on genuine errors, not for missing attributes.
lookupAttr :: EvalState -> Value -> ByteString -> Nix (Maybe Value)
lookupAttr es val name = liftNix $ Unsafe.lookupAttr es val name

-- | Get a list element by index.
getListByIdx :: EvalState -> Value -> Int -> Nix Value
getListByIdx es val idx = liftNix $ Unsafe.getListByIdx es val idx

-- * Value construction

-- | Allocate a fresh, uninitialised Nix value.
allocValue :: EvalState -> Nix Value
allocValue es = liftNix $ Unsafe.allocValue es

-- | Construct a Nix integer value.
mkInt :: EvalState -> Int64 -> Nix Value
mkInt es n = liftNix $ Unsafe.mkInt es n

-- | Construct a Nix float value.
mkFloat :: EvalState -> Double -> Nix Value
mkFloat es d = liftNix $ Unsafe.mkFloat es d

-- | Construct a Nix boolean value.
mkBool :: EvalState -> Bool -> Nix Value
mkBool es b = liftNix $ Unsafe.mkBool es b

-- | Construct a Nix null value.
mkNull :: EvalState -> Nix Value
mkNull es = liftNix $ Unsafe.mkNull es

-- | Construct a Nix string value.
mkString :: EvalState -> ByteString -> Nix Value
mkString es s = liftNix $ Unsafe.mkString es s

-- | Construct a Nix path value.
mkPath :: EvalState -> ByteString -> Nix Value
mkPath es s = liftNix $ Unsafe.mkPath es s

-- | Construct a Nix list value from a list of values.
mkList :: EvalState -> [Value] -> Nix Value
mkList es elems = liftNix $ Unsafe.mkList es elems

-- | Construct a Nix attribute set from a list of name-value pairs.
mkAttrs :: EvalState -> [(ByteString, Value)] -> Nix Value
mkAttrs es pairs = liftNix $ Unsafe.mkAttrs es pairs

-- | Construct a lazy function application value (thunk).
mkApply :: EvalState -> Value -> Value -> Nix Value
mkApply es fn arg = liftNix $ Unsafe.mkApply es fn arg

-- | Copy one Nix value into a fresh allocation.
copyValue :: EvalState -> Value -> Nix Value
copyValue es val = liftNix $ Unsafe.copyValue es val

-- | Call a Nix function with one argument (strict).
valueCall :: EvalState -> Value -> Value -> Nix Value
valueCall es fn arg = liftNix $ Unsafe.valueCall es fn arg

-- | Call a Nix function with multiple arguments (strict).
valueCallMulti :: EvalState -> Value -> [Value] -> Nix Value
valueCallMulti es fn args = liftNix $ Unsafe.valueCallMulti es fn args

-- * Garbage collection

-- | Increment the GC reference count for a Nix object.
gcIncRef :: Ptr a -> Nix ()
gcIncRef = liftNix . Unsafe.gcIncRef

-- | Decrement the GC reference count for a Nix object.
gcDecRef :: Ptr a -> Nix ()
gcDecRef = liftNix . Unsafe.gcDecRef

-- | Force garbage collection now.
gcNow :: Nix ()
gcNow = liftIO Unsafe.gcNow

-- * Settings

-- | Get a Nix setting by key name.
getSetting :: ByteString -> Nix ByteString
getSetting = liftNix . Unsafe.getSetting

-- | Set a Nix setting to a value.
setSetting :: ByteString -> ByteString -> Nix ()
setSetting key value = liftNix $ Unsafe.setSetting key value

-- * Flake operations

-- | Run an action with flake settings that are automatically freed afterwards.
withFlakeSettings :: (FlakeSettings -> Nix a) -> Nix a
withFlakeSettings f = withBracketNix Unsafe.createFlakeSettings Unsafe.freeFlakeSettings f

-- | Run an action with fetchers settings that are automatically freed afterwards.
withFetchersSettings :: (FetchersSettings -> Nix a) -> Nix a
withFetchersSettings f = withBracketNix Unsafe.createFetchersSettings Unsafe.freeFetchersSettings f

-- | Create an evaluator state with flake settings and run an action with it.
-- The state is automatically freed when the action completes.
withFlakeEvalState :: Store -> FlakeSettings -> (EvalState -> Nix a) -> Nix a
withFlakeEvalState store fs f =
  withBracketNix (Unsafe.createFlakeEvalState store fs) Unsafe.destroyEvalState f

-- | Parse a flake reference string into a 'FlakeReference' and a fragment.
parseFlakeReference
  :: FetchersSettings
  -> FlakeSettings
  -> Maybe ByteString
  -- ^ Optional base directory for resolving relative paths.
  -> ByteString
  -- ^ Flake reference string (e.g. @".#default"@).
  -> Nix (FlakeReference, ByteString)
parseFlakeReference fs flakeS mBaseDir refStr =
  liftNix $ Unsafe.parseFlakeReference fs flakeS mBaseDir refStr

-- | Lock a flake reference.
-- The returned 'LockedFlake' is automatically freed when garbage collected.
lockFlake
  :: FetchersSettings
  -> FlakeSettings
  -> EvalState
  -> LockMode
  -> FlakeReference
  -> Nix LockedFlake
lockFlake fs flakeS es mode ref =
  liftNix $ Unsafe.lockFlake fs flakeS es mode ref

-- | Get the output attributes of a locked flake.
getFlakeOutputs :: FlakeSettings -> EvalState -> LockedFlake -> Nix Value
getFlakeOutputs flakeS es lf = liftNix $ Unsafe.getFlakeOutputs flakeS es lf
