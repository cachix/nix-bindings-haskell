{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

-- | Types for Nix store path metadata (\"path info\").
--
-- The Nix C API can return path info as JSON in three format versions.
-- All versions share a common structure captured by 'PathInfo', with
-- format-specific differences handled by the 'Hash', 'ContentAddress',
-- and 'Signature' types.
module Nix.C.Store.PathInfo
  ( -- * Path info
    PathInfo (..)
    -- * Format version
  , PathInfoJsonFormat (..)
    -- * Hash
  , HashAlgo (..)
  , Hash (..)
  , hashAlgoText
  , hashToSRI
    -- * Sub-types
  , ContentAddress (..)
  , Signature (..)
  ) where

import Data.Aeson (FromJSON (..), ToJSON (..), withObject, withText, (.!=), (.:), (.:?))
import Data.Aeson.Types (Value (String))
import Data.ByteString (ByteString)
import Data.ByteString.Base64 qualified as Base64
import Data.Int (Int64)
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T
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
  parseJSON = withText "HashAlgo" $ \t -> pure (parseHashAlgo t)

-- | Render a 'HashAlgo' as its canonical text form (e.g. @"sha256"@).
hashAlgoText :: HashAlgo -> Text
hashAlgoText MD5 = "md5"
hashAlgoText SHA1 = "sha1"
hashAlgoText SHA256 = "sha256"
hashAlgoText SHA512 = "sha512"
hashAlgoText BLAKE3 = "blake3"
hashAlgoText (HashAlgoUnknown t) = t

parseHashAlgo :: Text -> HashAlgo
parseHashAlgo "md5" = MD5
parseHashAlgo "sha1" = SHA1
parseHashAlgo "sha256" = SHA256
parseHashAlgo "sha512" = SHA512
parseHashAlgo "blake3" = BLAKE3
parseHashAlgo other = HashAlgoUnknown other

-- | A parsed cryptographic hash with algorithm and raw digest bytes.
--
-- Nix always serializes hashes as SRI strings in JSON (@\"sha256-...\"@).
-- This type parses the SRI string into its components for structured access.
--
-- Use 'hashToSRI' to render back to SRI format.
data Hash = Hash
  { hashAlgo :: !HashAlgo
  , hashDigest :: !ByteString
  -- ^ Raw digest bytes (e.g. 32 bytes for SHA-256).
  } deriving (Show, Eq, Ord)

-- | Render a hash in SRI format: @\"sha256-\<base64\>=\"@
hashToSRI :: Hash -> Text
hashToSRI (Hash algo digest) =
  hashAlgoText algo <> "-" <> T.decodeUtf8 (Base64.encode digest)

instance FromJSON Hash where
  parseJSON = withText "Hash" $ \t ->
    case T.breakOnEnd "-" t of
      ("", _) -> fail $ "invalid SRI hash (missing '-'): " <> show t
      (algoWithDash, b64) ->
        case Base64.decode (T.encodeUtf8 b64) of
          Left err -> fail $ "invalid base64 in SRI hash: " <> err
          Right bytes -> pure (Hash (parseHashAlgo (T.dropEnd 1 algoWithDash)) bytes)

instance ToJSON Hash where
  toJSON = String . hashToSRI

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
  parseJSON v = flip (withObject "ContentAddress") v $ \o ->
    ContentAddressStructured <$> o .: "method" <*> o .: "hash"

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
  parseJSON v = flip (withObject "Signature") v $ \o ->
    SignatureStructured <$> o .: "keyName" <*> o .: "sig"

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
