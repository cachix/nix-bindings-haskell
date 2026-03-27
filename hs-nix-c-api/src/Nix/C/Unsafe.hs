-- | Unsafe (throwing) IO API for Nix operations.
--
-- All fallible functions in this module throw 'NixError' as exceptions.
-- For a safe monadic API, use "Nix.C" instead.
module Nix.C.Unsafe
  ( -- * Error types
    NixError (..)
  , NixErrorKind (..)
    -- * Initialization
  , module Nix.C.Unsafe.Init
    -- * Store operations
  , module Nix.C.Unsafe.Store
    -- * Expression evaluation
  , module Nix.C.Unsafe.Expr
    -- * Value manipulation
  , module Nix.C.Unsafe.Value
    -- * Garbage collection
  , module Nix.C.Unsafe.GC
    -- * Settings
  , module Nix.C.Unsafe.Settings
    -- * Flake operations
  , module Nix.C.Unsafe.Flake
  ) where

import Nix.C.Context (NixError (..), NixErrorKind (..))
import Nix.C.Unsafe.Expr
import Nix.C.Unsafe.Flake
import Nix.C.Unsafe.GC
import Nix.C.Unsafe.Init
import Nix.C.Unsafe.Settings
import Nix.C.Unsafe.Store
import Nix.C.Unsafe.Value
