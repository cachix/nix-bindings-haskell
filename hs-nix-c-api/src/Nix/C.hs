-- | Re-export of the raw FFI bindings from @hs-nix-c-api-sys@.
--
-- Provides direct access to the Nix C API without the safety and
-- convenience of the high-level wrappers.
-- For normal use, prefer "Nix" or "Nix.Unsafe".
module Nix.C
  ( -- * Util — types and functions
    module Generated.Nix.Util
  , module Generated.Nix.Util.Safe
    -- * Store — types and functions
  , module Generated.Nix.Store
  , module Generated.Nix.Store.Safe
  , module Generated.Nix.Store.Path
  , module Generated.Nix.Store.Path.Safe
  , Nix_path_info_json_format (..)
  , nix_store_query_path_info_json
    -- * Expr — types and functions
  , module Generated.Nix.Expr
  , module Generated.Nix.Expr.Safe
    -- * Value — functions and non-conflicting types
    --
    -- Types 'Nix_value' and 'EvalState' are already exported via
    -- "Generated.Nix.Expr"; only 'ValueType' and other unique types
    -- are re-exported here.
  , module Generated.Nix.Value.Safe
  , ValueType (..)
    -- * Flake — types and functions
  , module Generated.Nix.Flake
  , module Generated.Nix.Flake.Safe
    -- * Fetchers — types and functions
  , module Generated.Nix.Fetchers
  , module Generated.Nix.Fetchers.Safe
  ) where

import Generated.Nix.Expr
import Generated.Nix.Expr.Safe
import Generated.Nix.Fetchers
import Generated.Nix.Fetchers.Safe
import Generated.Nix.Flake
import Generated.Nix.Flake.Safe
import Generated.Nix.Store
import Generated.Nix.Store.Path
import Generated.Nix.Store.Path.Safe
import Generated.Nix.Store.PathInfo (Nix_path_info_json_format (..))
import Generated.Nix.Store.PathInfo.Safe (nix_store_query_path_info_json)
import Generated.Nix.Store.Safe
import Generated.Nix.Util
import Generated.Nix.Util.Safe
import Generated.Nix.Value (ValueType (..))
import Generated.Nix.Value.Safe
