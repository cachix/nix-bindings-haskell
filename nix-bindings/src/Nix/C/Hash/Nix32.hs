{-# LANGUAGE OverloadedStrings #-}

-- | Nix-specific base-32 encoding.
--
-- Nix uses a non-standard base-32 alphabet that omits @e@, @o@, @t@, @u@:
--
-- > 0123456789abcdfghijklmnpqrsvwxyz
--
-- The encoding also processes bytes in a different order than RFC 4648.
-- This module implements the same algorithm as @BaseNix32@ in the Nix C++ source.
module Nix.C.Hash.Nix32
  ( encode
  , decode
  ) where

import Data.Bits ((.&.), (.|.), shiftL, shiftR)
import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.Text (Text)
import Data.Text qualified as T
import Data.Word (Word8)

-- | The Nix base-32 alphabet: @0123456789abcdfghijklmnpqrsvwxyz@.
alphabet :: ByteString
alphabet = "0123456789abcdfghijklmnpqrsvwxyz"

-- | Encode raw bytes to Nix base-32 text.
encode :: ByteString -> Text
encode bs
  | BS.null bs = T.empty
  | otherwise =
      let len = encodedLength (BS.length bs)
      in T.pack
           [ charAtIndex n
           | n <- [len - 1, len - 2 .. 0]
           ]
  where
    charAtIndex :: Int -> Char
    charAtIndex n =
      let b = n * 5
          i = b `div` 8
          j = b `mod` 8
          byte_i = BS.index bs i
          byte_next = if i >= BS.length bs - 1 then 0 else BS.index bs (i + 1)
          c = (byte_i `shiftR` j) .|. (byte_next `shiftL` (8 - j))
      in toEnum $ fromIntegral $ BS.index alphabet (fromIntegral (c .&. 0x1f))

-- | Decode Nix base-32 text to raw bytes.
--
-- Returns 'Left' with an error message if the input contains invalid characters.
decode :: Text -> Either Text ByteString
decode t
  | T.null t = Right BS.empty
  | otherwise = do
      let s = T.unpack t
          outLen = (length s * 5) `div` 8
          initial = BS.replicate outLen 0
      foldlM (decodeChar (length s)) initial (zip [0..] s)
  where
    decodeChar :: Int -> ByteString -> (Int, Char) -> Either Text ByteString
    decodeChar sLen acc (n, c) = do
      digit <- case reverseChar c of
        Nothing -> Left ("invalid character in Nix base-32 string: " <> T.singleton c)
        Just d -> Right d
      let idx = sLen - n - 1
          b = idx * 5
          i = b `div` 8
          j = b `mod` 8
          acc1 = updateByte acc i (\old -> old .|. (digit `shiftL` j))
          acc2 = if digit `shiftR` (8 - j) /= 0 && i + 1 < BS.length acc1
                 then updateByte acc1 (i + 1) (\old -> old .|. (digit `shiftR` (8 - j)))
                 else acc1
      Right acc2

    updateByte :: ByteString -> Int -> (Word8 -> Word8) -> ByteString
    updateByte bs i f =
      let (before, rest) = BS.splitAt i bs
          old = BS.head rest
          after = BS.tail rest
      in before <> BS.singleton (f old) <> after

    reverseChar :: Char -> Maybe Word8
    reverseChar c = fromIntegral <$> BS.elemIndex (fromIntegral (fromEnum c)) alphabet

-- | Length of Nix base-32 encoding for a given number of input bytes.
encodedLength :: Int -> Int
encodedLength n = (n * 8 - 1) `div` 5 + 1

-- | Strict left fold over a list in Either.
foldlM :: (b -> a -> Either e b) -> b -> [a] -> Either e b
foldlM _ acc [] = Right acc
foldlM f acc (x:xs) = case f acc x of
  Left e -> Left e
  Right acc' -> foldlM f acc' xs
