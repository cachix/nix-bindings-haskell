{-# LANGUAGE OverloadedStrings #-}

-- | Parsed representation of a Nix store reference.
--
-- The Nix C API's @nix_store_get_uri@ returns a string that is /not/
-- always a valid URI.
-- For backward compatibility, the three most common store types
-- produce bare words (@"auto"@, @"local"@, @"daemon"@) rather than
-- proper @scheme:\/\/authority@ URIs.
--
-- This module provides a structured 'StoreReference' type that
-- faithfully represents these cases.
module Nix.C.Store.Reference
  ( StoreReference (..)
  , parseStoreReference
  , renderStoreReference
  ) where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import URI.ByteString (URI, serializeURIRef', parseURI, strictURIParserOptions)

-- | A parsed store reference, matching the C++ @StoreReference::render()@ output.
data StoreReference
  = -- | Nix picks the store automatically (rendered as @"auto"@).
    StoreAuto
  | -- | Local store with default settings (rendered as @"local"@).
    StoreLocal
  | -- | Daemon store via the default socket (rendered as @"daemon"@).
    StoreDaemon
  | -- | A full URI (e.g. @ssh-ng:\/\/host@, @https:\/\/cache.nixos.org@, @s3:\/\/bucket@).
    StoreURI !URI
  deriving (Show, Eq)

-- | Parse the raw string returned by @nix_store_get_uri@.
parseStoreReference :: ByteString -> Either ByteString StoreReference
parseStoreReference raw
  | raw == "auto" = Right StoreAuto
  | raw == "local" = Right StoreLocal
  | raw == "daemon" = Right StoreDaemon
  | BS.isInfixOf "://" raw =
      case parseURI strictURIParserOptions raw of
        Right uri -> Right (StoreURI uri)
        Left err -> Left (serializeError err)
  | otherwise = Left ("unrecognized store reference: " <> raw)
 where
  serializeError err =
    let msg = show err
    in BS.pack (map (toEnum . fromEnum) msg)

-- | Render a 'StoreReference' back to the format expected by Nix.
renderStoreReference :: StoreReference -> ByteString
renderStoreReference StoreAuto = "auto"
renderStoreReference StoreLocal = "local"
renderStoreReference StoreDaemon = "daemon"
renderStoreReference (StoreURI uri) = serializeURIRef' uri
