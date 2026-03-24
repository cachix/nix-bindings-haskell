-- | Haskell bindings to the Nix C API.
--
-- This module provides a safe, monadic API via the 'Nix' monad.
-- For a throwing IO API, use "Nix.Throw" instead.
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

    -- * Expression evaluation
  , withEvalState
  , evalFromString
  , valueForce
  , valueForceDeep

    -- * Value extraction
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

import Control.Monad.IO.Class (liftIO)
import Data.ByteString (ByteString)
import Data.Int (Int64)
import Nix.Context (NixError (..), NixErrorKind (..))
import qualified Nix.Expr as Throw
import qualified Nix.Init as Throw
import Nix.Internal (EvalState, Store, StorePath, Value)
import Nix.Monad (Nix, liftNix, runNix, runNixThrow)
import qualified Nix.Store as Throw
import qualified Nix.Value as Throw
import Nix.Value (NixType (..))

-- * Initialization

-- | Initialize all Nix libraries.
-- This is idempotent and safe to call multiple times.
initNix :: Nix ()
initNix = liftNix Throw.initNix

-- | Get the Nix version string.
nixVersion :: Nix ByteString
nixVersion = liftIO Throw.nixVersion

-- * Store operations

-- | Open a Nix store and run an action with it.
-- The store is automatically closed when the action completes.
withStore :: ByteString -> (Store -> Nix a) -> Nix a
withStore uri f = liftNix $ Throw.withStore uri (runNixThrow . f)

-- | Get the URI of the store.
storeUri :: Store -> Nix ByteString
storeUri = liftNix . Throw.storeUri

-- | Get the store directory path (typically @"\/nix\/store"@).
storeDir :: Store -> Nix ByteString
storeDir = liftNix . Throw.storeDir

-- | Get the Nix daemon version for the store.
storeVersion :: Store -> Nix ByteString
storeVersion = liftNix . Throw.storeVersion

-- | Check whether a store path is valid (exists in the store).
isValidPath :: Store -> StorePath -> Nix Bool
isValidPath store sp = liftIO $ Throw.isValidPath store sp

-- | Parse a store path string into a 'StorePath'.
-- The 'StorePath' is valid only within the callback and freed afterwards.
parseStorePath :: Store -> ByteString -> (StorePath -> Nix a) -> Nix a
parseStorePath store path f =
  liftNix $ Throw.parseStorePath store path (runNixThrow . f)

-- | Get the name component of a store path.
storePathName :: StorePath -> Nix ByteString
storePathName = liftIO . Throw.storePathName

-- * Expression evaluation

-- | Create an evaluator state and run an action with it.
-- The state is automatically freed when the action completes.
withEvalState :: Store -> (EvalState -> Nix a) -> Nix a
withEvalState store f = liftNix $ Throw.withEvalState store (runNixThrow . f)

-- | Parse and evaluate a Nix expression from a string.
--
-- The @path@ argument is used to resolve relative paths in the expression.
evalFromString :: EvalState -> ByteString -> ByteString -> Nix Value
evalFromString es expr path = liftNix $ Throw.evalFromString es expr path

-- | Force evaluation of a lazy value.
valueForce :: EvalState -> Value -> Nix ()
valueForce es val = liftNix $ Throw.valueForce es val

-- | Recursively force evaluation of a value and all its sub-values.
valueForceDeep :: EvalState -> Value -> Nix ()
valueForceDeep es val = liftNix $ Throw.valueForceDeep es val

-- * Value extraction

-- | Get the type of a Nix value.
getType :: EvalState -> Value -> Nix NixType
getType es val = liftIO $ Throw.getType es val

-- | Extract an integer from a Nix value.
-- Fails on type mismatch.
getInt :: EvalState -> Value -> Nix Int64
getInt es val = liftNix $ Throw.getInt es val

-- | Extract a float from a Nix value.
-- Fails on type mismatch.
getFloat :: EvalState -> Value -> Nix Double
getFloat es val = liftNix $ Throw.getFloat es val

-- | Extract a boolean from a Nix value.
-- Fails on type mismatch.
getBool :: EvalState -> Value -> Nix Bool
getBool es val = liftNix $ Throw.getBool es val

-- | Extract a string from a Nix value.
getString :: EvalState -> Value -> Nix ByteString
getString es val = liftNix $ Throw.getString es val

-- | Extract a path string from a Nix value.
getPathString :: EvalState -> Value -> Nix ByteString
getPathString es val = liftNix $ Throw.getPathString es val

-- | Get the number of elements in a Nix list value.
-- Fails on type mismatch.
getListSize :: EvalState -> Value -> Nix Int
getListSize es val = liftNix $ Throw.getListSize es val

-- | Get the number of attributes in a Nix attribute set value.
-- Fails on type mismatch.
getAttrsSize :: EvalState -> Value -> Nix Int
getAttrsSize es val = liftNix $ Throw.getAttrsSize es val

-- | Check if an attribute set has an attribute with the given name.
-- Fails on type mismatch.
hasAttrByName :: EvalState -> Value -> ByteString -> Nix Bool
hasAttrByName es val name = liftNix $ Throw.hasAttrByName es val name

-- | Get an attribute by name from an attribute set.
-- Returns an error if the attribute does not exist.
getAttrByName :: EvalState -> Value -> ByteString -> Nix Value
getAttrByName es val name = liftNix $ Throw.getAttrByName es val name

-- | Look up an attribute by name, returning 'Nothing' if absent.
-- Only fails on genuine errors, not for missing attributes.
lookupAttr :: EvalState -> Value -> ByteString -> Nix (Maybe Value)
lookupAttr es val name = liftNix $ Throw.lookupAttr es val name

-- | Get a list element by index.
getListByIdx :: EvalState -> Value -> Int -> Nix Value
getListByIdx es val idx = liftNix $ Throw.getListByIdx es val idx
