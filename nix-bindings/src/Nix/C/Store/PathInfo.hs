-- | Types for Nix store path metadata (\"path info\").
--
-- The Nix C API provides accessor functions for querying individual
-- fields from an opaque @PathInfo@ struct.
-- The 'PathInfo' record collects these fields into a Haskell value.
module Nix.C.Store.PathInfo
  ( PathInfo (..)
  ) where

import Data.Text (Text)
import Data.Word (Word64)
import Nix.C.Hash (Hash)
import Nix.C.Internal (StorePath)

-- | Store path metadata returned by the Nix store.
--
-- Constructed by 'Nix.C.Unsafe.Store.queryPathInfo' using the
-- individual accessor functions from the Nix C API.
data PathInfo = PathInfo
  { pathInfoNarHash :: !Hash
  -- ^ Hash of the NAR serialization.
  , pathInfoNarSize :: !Word64
  -- ^ Size of the NAR serialization in bytes.
  , pathInfoReferences :: ![StorePath]
  -- ^ Referenced store paths.
  , pathInfoCa :: !(Maybe Text)
  -- ^ Content address, if content-addressed.
  , pathInfoDeriver :: !(Maybe StorePath)
  -- ^ Derivation that produced this path, if known.
  , pathInfoSignatures :: ![Text]
  -- ^ Signatures on this path.
  }
  deriving (Show)
