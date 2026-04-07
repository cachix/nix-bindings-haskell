{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.C.Hash.Nix32
  ( spec
  ) where

import Data.ByteString (ByteString)
import Data.ByteString qualified as BS
import Data.Char (digitToInt)
import Data.Either (isLeft)
import Data.Word (Word8)
import Test.Hspec
import Test.QuickCheck

import Nix.C.Hash.Nix32 (decode, encode)

spec :: Spec
spec = describe "Nix.C.Hash.Nix32" $ do
  -- Golden vectors from nix/tests/functional/hash-convert.sh
  describe "encode" $ do
    it "SHA1 of \"abc\"" $
      encode (hexToBS "800d59cfcd3c05e900cb4e214be48f6b886a08df")
        `shouldBe` "vw46m23bizj4n8afrc0fj19wrp7mj3c0"

    it "SHA256 of \"abc\"" $
      encode (hexToBS "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad")
        `shouldBe` "1b8m03r63zqhnjf7l5wnldhh7c134ap5vpj0850ymkq1iyzicy5s"

    it "SHA512" $
      encode (hexToBS "204a8fc6dda82f0a0ced7beb8e08a41657c16ef468b228a8279be331a703c33596fd15c13b1b07f9aa1d3bea57789ca031ad85c7a71dd70354ec631238ca3445")
        `shouldBe` "12k9jiq29iyqm03swfsgiw5mlqs173qazm3n7daz43infy12pyrcdf30fkk3qwv4yl2ick8yipc2mqnlh48xsvvxl60lbx8vp38yji0"

    it "empty" $
      encode BS.empty `shouldBe` ""

  describe "decode" $ do
    it "SHA1 nix32 -> bytes" $
      decode "vw46m23bizj4n8afrc0fj19wrp7mj3c0"
        `shouldBe` Right (hexToBS "800d59cfcd3c05e900cb4e214be48f6b886a08df")

    it "SHA256 nix32 -> bytes" $
      decode "1b8m03r63zqhnjf7l5wnldhh7c134ap5vpj0850ymkq1iyzicy5s"
        `shouldBe` Right (hexToBS "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad")

    it "SHA512 nix32 -> bytes" $
      decode "12k9jiq29iyqm03swfsgiw5mlqs173qazm3n7daz43infy12pyrcdf30fkk3qwv4yl2ick8yipc2mqnlh48xsvvxl60lbx8vp38yji0"
        `shouldBe` Right (hexToBS "204a8fc6dda82f0a0ced7beb8e08a41657c16ef468b228a8279be331a703c33596fd15c13b1b07f9aa1d3bea57789ca031ad85c7a71dd70354ec631238ca3445")

    it "empty" $
      decode "" `shouldBe` Right BS.empty

    it "rejects invalid characters (e is not in nix32 alphabet)" $
      decode "hello" `shouldSatisfy` isLeft

  describe "properties" $ do
    it "decode . encode == id" $
      property $ \(bs :: [Word8]) ->
        decode (encode (BS.pack bs)) === Right (BS.pack bs)

  -- TODO: cross-check with `nix hash convert` CLI for additional confidence

-- | Decode a hex string to raw bytes.
hexToBS :: String -> ByteString
hexToBS = BS.pack . go
  where
    go :: String -> [Word8]
    go [] = []
    go (a : b : rest) = fromIntegral (digitToInt a * 16 + digitToInt b) : go rest
    go _ = error "hexToBS: odd-length hex string"
