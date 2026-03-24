-- | Internal types shared across Nix modules.
-- Not intended for direct use by consumers.
module Nix.Internal
  ( -- * Opaque C phantom types
    CNixContext
  , CStore
  , CStorePath
  , CEvalState
  , CNixValue
    -- * Haskell wrapper types
  , Store (..)
  , StorePath (..)
  , EvalState (..)
  , Value (..)
  ) where

import Foreign (Ptr)

-- | Phantom type for @nix_c_context@.
data CNixContext

-- | Phantom type for @Store@.
data CStore

-- | Phantom type for @StorePath@.
data CStorePath

-- | Phantom type for @EvalState@.
data CEvalState

-- | Phantom type for @nix_value@.
data CNixValue

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

-- | Handle to a Nix value.
-- Values are reference-counted by the Nix garbage collector.
newtype Value = Value (Ptr CNixValue)
