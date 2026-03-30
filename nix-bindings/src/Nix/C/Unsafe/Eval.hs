{-# LANGUAGE OverloadedStrings #-}

-- | Convenience functions for evaluating and extracting Nix values.
--
-- These combine expression evaluation with type-directed extraction
-- in a single step. All functions throw 'Nix.C.Context.NixError' on failure.
module Nix.C.Unsafe.Eval
  ( eval
  , evalAt
  , evalAs
  , evalAsAt
  ) where

import Data.ByteString (ByteString)
import Nix.C.Internal (EvalState, Value, byteStringToOsPath)
import Nix.C.Unsafe.Expr (evalFromString)
import Nix.C.Unsafe.Value (FromValue, unsafeForceGet)
import System.OsPath (OsPath)

-- | Evaluate a Nix expression string.
-- Uses the current directory as the base path for resolving relative paths.
eval :: EvalState -> ByteString -> IO Value
eval es expr = evalFromString es expr (byteStringToOsPath ".")

-- | Evaluate a Nix expression string with an explicit base path.
evalAt :: EvalState -> ByteString -> OsPath -> IO Value
evalAt = evalFromString

-- | Evaluate a Nix expression string and extract a typed result.
-- Uses the current directory as the base path.
--
-- @
-- n <- evalAs \@Int64 state "1 + 2"  -- 3
-- @
evalAs :: FromValue a => EvalState -> ByteString -> IO a
evalAs es expr = unsafeForceGet es =<< eval es expr

-- | Evaluate a Nix expression string and extract a typed result
-- with an explicit base path.
evalAsAt :: FromValue a => EvalState -> ByteString -> OsPath -> IO a
evalAsAt es expr path = unsafeForceGet es =<< evalFromString es expr path
