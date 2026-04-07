{-# LANGUAGE OverloadedStrings #-}

-- | Types for Nix store path metadata (\"path info\").
--
-- The Nix C API provides accessor functions for querying individual
-- fields from an opaque @PathInfo@ struct.
-- The 'PathInfo' record collects these fields into a Haskell value.
module Nix.C.Store.PathInfo
  ( -- * Path info
    PathInfo (..)
    -- * Hash
  , HashAlgo (..)
  , Hash (..)
  , hashAlgoText
  , hashToSRI
  , parseHashSRI
  ) where

import Data.ByteString (ByteString)
import Data.ByteString.Base64 qualified as Base64
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T
import Data.Word (Word64)
import Nix.C.Internal (StorePath)

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
-- Nix serializes hashes as SRI strings (@\"sha256-...\"@).
-- This type splits the SRI string into its components for structured access.
--
-- Use 'hashToSRI' to render back to SRI format,
-- or 'parseHashSRI' to parse from SRI format.
data Hash = Hash
  { hashAlgo :: !HashAlgo
  , hashDigest :: !ByteString
  -- ^ Raw digest bytes (e.g. 32 bytes for SHA-256).
  } deriving (Show, Eq, Ord)

-- | Render a hash in SRI format: @\"sha256-\<base64\>=\"@
hashToSRI :: Hash -> Text
hashToSRI (Hash algo digest) =
  hashAlgoText algo <> "-" <> T.decodeUtf8 (Base64.encode digest)

-- | Parse an SRI hash string (e.g. @\"sha256-\<base64\>\"@) into a 'Hash'.
parseHashSRI :: Text -> Either String Hash
parseHashSRI t =
  case T.breakOnEnd "-" t of
    ("", _) -> Left $ "invalid SRI hash (missing '-'): " <> show t
    (algoWithDash, b64) ->
      case Base64.decode (T.encodeUtf8 b64) of
        Left err -> Left $ "invalid base64 in SRI hash: " <> err
        Right bytes -> Right (Hash (parseHashAlgo (T.dropEnd 1 algoWithDash)) bytes)

-- | Store path metadata returned by the Nix store.
--
-- Constructed by 'Nix.C.Unsafe.Store.queryPathInfo' using the
-- individual accessor functions from the Nix C API.
data PathInfo = PathInfo
  { pathInfoNarHash :: !Hash
  -- ^ Hash of the NAR serialization (SRI format).
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
