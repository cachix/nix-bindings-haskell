-- | Internal types shared across Nix modules.
-- Not intended for direct use by consumers.
module Nix.Internal
  ( -- * C type aliases (from hs-nix-c-api-sys)
    CNixContext
  , CStore
  , CStorePath
  , CEvalState
  , CNixValue
  , CEvalStateBuilder
    -- * Nix value types
  , NixType (..)
    -- * Haskell wrapper types
  , Store (..)
  , StorePath (..)
  , EvalState (..)
  , castEvalPtr
  , Value (..)
  ) where

import Foreign (Ptr, castPtr)
import qualified Generated.Nix.Expr
import qualified Generated.Nix.Store
import qualified Generated.Nix.Store.Path
import qualified Generated.Nix.Util
import qualified Generated.Nix.Value

-- | Alias for the C @nix_c_context@ type from the -sys package.
type CNixContext = Generated.Nix.Util.Nix_c_context

-- | Alias for the C @Store@ type from the -sys package.
type CStore = Generated.Nix.Store.Store

-- | Alias for the C @StorePath@ type from the -sys package.
type CStorePath = Generated.Nix.Store.Path.StorePath

-- | Alias for the C @EvalState@ type from the -sys package.
type CEvalState = Generated.Nix.Expr.EvalState

-- | Alias for the C @nix_value@ type from the -sys package.
type CNixValue = Generated.Nix.Value.Nix_value

-- | Alias for the C @nix_eval_state_builder@ type from the -sys package.
type CEvalStateBuilder = Generated.Nix.Expr.Nix_eval_state_builder

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

-- | Handle to an open Nix store.
-- Carries a reusable error context to avoid per-call allocation.
data Store = Store
  { storePtr :: !(Ptr CStore)
  , storeCtx :: !(Ptr CNixContext)
  }

-- | Handle to a Nix store path.
newtype StorePath = StorePath (Ptr CStorePath)

-- | Handle to a Nix language evaluator state.
-- Carries a reusable error context to avoid per-call allocation.
data EvalState = EvalState
  { evalPtr :: !(Ptr CEvalState)
  , evalCtx :: !(Ptr CNixContext)
  }

-- | Cast the EvalState pointer for cross-module -sys type compatibility.
-- Generated.Nix.Expr and Generated.Nix.Value define separate EvalState types;
-- castPtr is safe since they refer to the same C struct.
castEvalPtr :: EvalState -> Ptr a
castEvalPtr = castPtr . evalPtr

-- | Handle to a Nix value.
-- Values are reference-counted by the Nix garbage collector.
newtype Value = Value (Ptr CNixValue)
