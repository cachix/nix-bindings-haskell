-- | Unsafe (throwing) IO API for Nix operations.
--
-- All fallible functions in this module throw 'NixError' as exceptions.
-- For a safe monadic API, use "Nix" instead.
module Nix.Unsafe
  ( -- * Error types
    NixError (..)
  , NixErrorKind (..)
    -- * Initialization
  , module Nix.Unsafe.Init
    -- * Store operations
  , module Nix.Unsafe.Store
    -- * Expression evaluation
  , module Nix.Unsafe.Expr
    -- * Value manipulation
  , module Nix.Unsafe.Value
    -- * Garbage collection
  , module Nix.Unsafe.GC
    -- * Settings
  , module Nix.Unsafe.Settings
  ) where

import Nix.Context (NixError (..), NixErrorKind (..))
import Nix.Unsafe.Expr
import Nix.Unsafe.GC
import Nix.Unsafe.Init
import Nix.Unsafe.Settings
import Nix.Unsafe.Store
import Nix.Unsafe.Value
