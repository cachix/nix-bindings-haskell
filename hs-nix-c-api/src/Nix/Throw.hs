-- | Throwing IO API for Nix operations.
--
-- This module re-exports the complete Nix API where all fallible
-- functions throw 'NixError' as exceptions.
-- For a safe monadic API, use "Nix" instead.
module Nix.Throw
  ( -- * Error types
    module Nix.Context
    -- * Initialization
  , module Nix.Init
    -- * Store operations
  , module Nix.Store
    -- * Expression evaluation
  , module Nix.Expr
    -- * Value manipulation
  , module Nix.Value
  ) where

import Nix.Context (NixError (..), NixErrorKind (..))
import Nix.Expr
import Nix.Init
import Nix.Store
import Nix.Value
