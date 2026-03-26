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
  , CFlakeSettings
  , CFetchersSettings
  , CFlakeReference
  , CLockedFlake
    -- * Nix value types
  , NixType (..)
  , toNixType
  , fromNixType
    -- * Haskell wrapper types
  , Store (..)
  , StorePath (..)
  , EvalState (..)
  , castEvalPtr
  , Value (..)
  , FlakeSettings (..)
  , FetchersSettings (..)
  , FlakeReference (..)
  , LockedFlake (..)
  ) where

import Foreign (ForeignPtr, Ptr, castPtr, withForeignPtr)
import System.IO.Unsafe (unsafePerformIO)
import qualified Generated.Nix.Expr
import qualified Generated.Nix.Fetchers
import qualified Generated.Nix.Flake
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

-- | Alias for the C @nix_flake_settings@ type from the -sys package.
type CFlakeSettings = Generated.Nix.Flake.Nix_flake_settings

-- | Alias for the C @nix_fetchers_settings@ type from the -sys package.
type CFetchersSettings = Generated.Nix.Fetchers.Nix_fetchers_settings

-- | Alias for the C @nix_flake_reference@ type from the -sys package.
type CFlakeReference = Generated.Nix.Flake.Nix_flake_reference

-- | Alias for the C @nix_locked_flake@ type from the -sys package.
type CLockedFlake = Generated.Nix.Flake.Nix_locked_flake

-- | The type of a Nix value.
--
-- Constructor order must match the C enum @ValueType@ (0 = Thunk, ..., 11 = Failed).
-- 'toNixType' and 'fromNixType' convert between this and the generated 'ValueType'.
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

-- | Convert a generated 'ValueType' to a 'NixType'.
-- Returns 'TypeFailed' for unknown values.
toNixType :: Generated.Nix.Value.ValueType -> NixType
toNixType (Generated.Nix.Value.ValueType n)
  | n' >= 0 && n' <= fromEnum (maxBound :: NixType) = toEnum n'
  | otherwise = TypeFailed
 where
  n' = fromIntegral n

-- | Convert a 'NixType' to a generated 'ValueType'.
fromNixType :: NixType -> Generated.Nix.Value.ValueType
fromNixType = Generated.Nix.Value.ValueType . fromIntegral . fromEnum

-- | Handle to an open Nix store.
-- Carries a reusable error context to avoid per-call allocation.
data Store = Store
  { storePtr :: !(Ptr CStore)
  , storeCtx :: !(Ptr CNixContext)
  }

-- | Handle to a Nix store path.
-- Automatically freed when garbage collected.
newtype StorePath = StorePath (ForeignPtr CStorePath)
  deriving (Eq)

-- | Pointer-based ordering. Stable within a process lifetime.
instance Ord StorePath where
  compare (StorePath a) (StorePath b) =
    unsafePerformIO $
      withForeignPtr a $ \pa ->
        withForeignPtr b $ \pb ->
          pure (compare pa pb)

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

-- | Handle to Nix flake settings.
-- Automatically freed when garbage collected.
newtype FlakeSettings = FlakeSettings (ForeignPtr CFlakeSettings)

-- | Handle to Nix fetchers settings.
-- Automatically freed when garbage collected.
newtype FetchersSettings = FetchersSettings (ForeignPtr CFetchersSettings)

-- | Handle to a parsed Nix flake reference.
-- Automatically freed when garbage collected.
newtype FlakeReference = FlakeReference (ForeignPtr CFlakeReference)

-- | Handle to a locked Nix flake.
-- Automatically freed when garbage collected.
newtype LockedFlake = LockedFlake (ForeignPtr CLockedFlake)
