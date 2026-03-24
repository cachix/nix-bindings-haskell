-- | Haskell bindings to the Nix C API.
--
-- This module re-exports the safe, idiomatic Haskell API.
-- For raw FFI bindings, use the @hs-nix-c-api-sys@ package
-- and its @Generated.Nix.*@ modules.
--
-- @
-- {-# LANGUAGE OverloadedStrings #-}
-- import Nix
--
-- main :: IO ()
-- main = do
--   initNix
--   withStore "local" $ \\store ->
--     withEvalState store $ \\state -> do
--       val <- evalFromString state "1 + 2" "."
--       valueForce state val
--       n <- getInt state val
--       print n  -- 3
-- @
module Nix
  ( -- * Initialization
    module Nix.Init

    -- * Error handling
  , module Nix.Context

    -- * Store operations
  , module Nix.Store

    -- * Expression evaluation
  , module Nix.Expr

    -- * Value manipulation
  , module Nix.Value
  ) where

import Nix.Context (NixException (..))
import Nix.Expr
import Nix.Init
import Nix.Store
import Nix.Value
