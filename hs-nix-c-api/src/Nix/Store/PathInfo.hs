{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

-- | Types for Nix store path metadata (\"path info\").
--
-- The Nix C API can return path info as JSON in three format versions.
-- All versions share a common structure captured by 'PathInfo', with
-- format-specific differences handled by the 'Hash', 'ContentAddress',
-- and 'Signature' types.
module Nix.Store.PathInfo
  ( -- * Path info
    PathInfo (..)
    -- * Format version
  , PathInfoJsonFormat (..)
    -- * Sub-types
  , HashAlgo (..)
  , Hash (..)
  , ContentAddress (..)
  , Signature (..)
  ) where

import Data.Aeson (FromJSON (..), withObject, withText, (.!=), (.:), (.:?))
import Data.Aeson.Types (Value (Object, String))
import Data.Int (Int64)
import Data.Text (Text)
import Data.Word (Word64)

-- | JSON format version for path info serialization.
data PathInfoJsonFormat
  = -- | Legacy format: SRI hash strings, full store paths, string signatures.
    PathInfoJsonFormatV1
  | -- | Structured format: hash objects, base names, string signatures.
    PathInfoJsonFormatV2
  | -- | Like V2 but with structured signature objects.
    PathInfoJsonFormatV3
  deriving (Show, Eq, Ord, Bounded, Enum)

instance FromJSON PathInfoJsonFormat where
  parseJSON v = do
    n <- parseJSON @Int v
    case n of
      1 -> pure PathInfoJsonFormatV1
      2 -> pure PathInfoJsonFormatV2
      3 -> pure PathInfoJsonFormatV3
      _ -> fail $ "unknown path info JSON format version: " <> show n

-- | Hash algorithm used by Nix.
--
-- Matches the C++ @HashAlgorithm@ enum in @libutil/hash.hh@.
data HashAlgo
  = MD5
  | SHA1
  | SHA256
  | SHA512
  | BLAKE3
  | HashAlgoUnknown !Text
  -- ^ An algorithm not yet known to these bindings.
  deriving (Show, Eq, Ord)

instance FromJSON HashAlgo where
  parseJSON = withText "HashAlgo" $ \t -> pure $ case t of
    "md5" -> MD5
    "sha1" -> SHA1
    "sha256" -> SHA256
    "sha512" -> SHA512
    "blake3" -> BLAKE3
    other -> HashAlgoUnknown other

-- | A cryptographic hash, either as an SRI string (V1) or structured (V2/V3).
data Hash
  = -- | SRI-format hash string (e.g. @"sha256-..."@).
    HashSRI !Text
  | -- | Structured hash with algorithm and value.
    HashStructured
      { hashAlgo :: !HashAlgo
      , hashValue :: !Text
      }
  deriving (Show, Eq)

instance FromJSON Hash where
  parseJSON (String s) = pure (HashSRI s)
  parseJSON (Object o) = HashStructured <$> o .: "algo" <*> o .: "hash"
  parseJSON _ = fail "expected string or object for hash"

-- | Content address of a store object.
data ContentAddress
  = -- | V1 rendered string (e.g. @"fixed:sha256:..."@).
    ContentAddressText !Text
  | -- | V2/V3 structured content address.
    ContentAddressStructured
      { caMethod :: !Text
      , caHash :: !Hash
      }
  deriving (Show, Eq)

instance FromJSON ContentAddress where
  parseJSON (String s) = pure (ContentAddressText s)
  parseJSON (Object o) = ContentAddressStructured <$> o .: "method" <*> o .: "hash"
  parseJSON _ = fail "expected string or object for content address"

-- | A signature on a store path.
data Signature
  = -- | V1/V2 signature string (e.g. @"keyName:base64sig"@).
    SignatureText !Text
  | -- | V3 structured signature.
    SignatureStructured
      { sigKeyName :: !Text
      , sigValue :: !Text
      }
  deriving (Show, Eq)

instance FromJSON Signature where
  parseJSON (String s) = pure (SignatureText s)
  parseJSON (Object o) = SignatureStructured <$> o .: "keyName" <*> o .: "sig"
  parseJSON _ = fail "expected string or object for signature"

-- | Store path metadata returned by @nix store query-path-info@.
--
-- The exact representation of hashes, references, and signatures depends
-- on the 'PathInfoJsonFormat' used to query.
data PathInfo = PathInfo
  { pathInfoVersion :: !PathInfoJsonFormat
  -- ^ Format version.
  , pathInfoStoreDir :: !Text
  -- ^ Store directory (typically @\/nix\/store@).
  , pathInfoNarHash :: !Hash
  -- ^ Hash of the NAR serialization.
  , pathInfoNarSize :: !Word64
  -- ^ Size of the NAR serialization in bytes.
  , pathInfoReferences :: ![Text]
  -- ^ Referenced store paths.
  -- Full paths in V1, base names in V2/V3.
  , pathInfoCa :: !(Maybe ContentAddress)
  -- ^ Content address, if content-addressed.
  , pathInfoDeriver :: !(Maybe Text)
  -- ^ Derivation that produced this path.
  -- Full path in V1, base name in V2/V3.
  , pathInfoRegistrationTime :: !(Maybe Int64)
  -- ^ Unix timestamp of registration in the store.
  , pathInfoUltimate :: !Bool
  -- ^ Whether this path was built locally.
  , pathInfoSignatures :: ![Signature]
  -- ^ Signatures on this path.
  }
  deriving (Show, Eq)

instance FromJSON PathInfo where
  parseJSON = withObject "PathInfo" $ \o ->
    PathInfo
      <$> o .: "version"
      <*> o .: "storeDir"
      <*> o .: "narHash"
      <*> o .: "narSize"
      <*> o .: "references"
      <*> o .:? "ca"
      <*> o .:? "deriver"
      <*> o .:? "registrationTime"
      <*> o .:? "ultimate" .!= False
      <*> o .:? "signatures" .!= []
