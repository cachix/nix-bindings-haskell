{-# LANGUAGE OverloadedStrings #-}

-- | Cryptographic hash types for Nix store operations.
--
-- The Nix C API returns hashes in two formats:
--
-- * __Nix32__: @\"sha256:0c0msqmygrg...\"@ — used by path info accessors.
-- * __SRI__: @\"sha256-q7Q...=\"@ — used in derivation JSON.
--
-- This module provides an opaque 'Hash' type that stores the algorithm
-- and raw digest bytes, with parsers and renderers for both formats.
module Nix.C.Hash
  ( -- * Types
    HashAlgo (..)
  , Hash
  , HashError (..)
    -- * Construction
  , newHash
    -- * Accessors
  , hashAlgo
  , hashDigest
    -- * Parsing
  , parseHash
    -- * Rendering
  , hashToNix32
  , hashToSRI
    -- * Utilities
  , hashAlgoText
  ) where

import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.ByteString.Base64 qualified as Base64
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T
import Nix.C.Hash.Nix32 qualified as Nix32

-- | Hash algorithm used by Nix.
data HashAlgo
  = SHA256
  | SHA512
  deriving (Show, Eq, Ord)

-- | Render a 'HashAlgo' as its canonical text form (e.g. @\"sha256\"@).
hashAlgoText :: HashAlgo -> Text
hashAlgoText SHA256 = "sha256"
hashAlgoText SHA512 = "sha512"

parseHashAlgo :: Text -> Either HashError HashAlgo
parseHashAlgo "sha256" = Right SHA256
parseHashAlgo "sha512" = Right SHA512
parseHashAlgo other = Left (HashBadAlgo other)

-- | Expected digest length in bytes for a given algorithm.
digestLength :: HashAlgo -> Int
digestLength SHA256 = 32
digestLength SHA512 = 64

-- | A parsed cryptographic hash with algorithm and raw digest bytes.
--
-- Construct with 'newHash' or 'parseHash'.
-- Access fields with 'hashAlgo' and 'hashDigest'.
data Hash = UnsafeHash
  { hashAlgo :: !HashAlgo
  , hashDigest :: !ByteString
  -- ^ Raw digest bytes (32 bytes for SHA-256, 64 bytes for SHA-512).
  } deriving (Show, Eq, Ord)

-- | Errors that can occur when constructing or parsing a 'Hash'.
data HashError
  = HashBadAlgo !Text
  -- ^ Unknown algorithm string.
  | HashBadDigestLength !HashAlgo !Int !Int
  -- ^ Wrong digest length: algorithm, expected bytes, actual bytes.
  | HashBadEncoding !Text
  -- ^ Failed to decode the hash digest (bad Nix32 or base64).
  deriving (Show, Eq)

-- | Construct a 'Hash' from an algorithm and raw digest bytes.
--
-- Validates that the digest length matches the algorithm.
newHash :: HashAlgo -> ByteString -> Either HashError Hash
newHash algo digest
  | BS.length digest == expected = Right (UnsafeHash algo digest)
  | otherwise = Left (HashBadDigestLength algo expected (BS.length digest))
  where
    expected = digestLength algo

-- | Parse a hash string, auto-detecting the format.
--
-- Supports both formats returned by the Nix C API:
--
-- * Nix32: @\"sha256:0c0msqmygrg...\"@ (colon separator)
-- * SRI: @\"sha256-q7Q...=\"@ (dash separator, base64)
parseHash :: Text -> Either HashError Hash
parseHash t
  -- Try colon-separated Nix32 format first
  | (algoText, rest) <- T.breakOn ":" t
  , not (T.null rest)
  , not (T.any (== '-') algoText) = do
      algo <- parseHashAlgo algoText
      let encoded = T.drop 1 rest
      digest <- case Nix32.decode encoded of
        Left err -> Left (HashBadEncoding err)
        Right bs -> Right bs
      newHash algo digest
  -- Try dash-separated SRI format
  | (algoText, rest) <- T.breakOn "-" t
  , not (T.null rest) = do
      algo <- parseHashAlgo algoText
      let b64 = T.drop 1 rest
      digest <- case Base64.decode (T.encodeUtf8 b64) of
        Left err -> Left (HashBadEncoding (T.pack err))
        Right bs -> Right bs
      newHash algo digest
  | otherwise = Left (HashBadEncoding ("no separator found in hash string: " <> t))

-- | Render a hash in Nix32 format: @\"sha256:0c0msqmygrg...\"@
--
-- This is the format returned by the Nix C API path info accessors.
hashToNix32 :: Hash -> Text
hashToNix32 (UnsafeHash algo digest) =
  hashAlgoText algo <> ":" <> Nix32.encode digest

-- | Render a hash in SRI format: @\"sha256-\<base64\>=\"@
--
-- This is the format used in Nix derivation JSON.
hashToSRI :: Hash -> Text
hashToSRI (UnsafeHash algo digest) =
  hashAlgoText algo <> "-" <> T.decodeUtf8 (Base64.encode digest)
