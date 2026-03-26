{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Store (spec) where

import qualified Data.ByteString as BS
import Test.Hspec

import Nix.Context (NixError)
import Nix.Unsafe.Init (initNix)
import Nix.Unsafe.Store

spec :: Spec
spec = describe "Nix.Store" $ before_ initNix $ do
  describe "withStore" $ do
    it "can open and close the local store" $ do
      withStore "auto" $ \_ -> pure ()

    it "can open the daemon store" $ do
      withStore "auto" $ \_ -> pure ()

  describe "storeUri" $ do
    it "returns a non-empty URI" $ do
      withStore "auto" $ \store -> do
        uri <- storeUri store
        uri `shouldSatisfy` (not . BS.null)

  describe "storeDir" $ do
    it "returns the store directory" $ do
      withStore "auto" $ \store -> do
        dir <- storeDir store
        dir `shouldSatisfy` (not . BS.null)
        dir `shouldSatisfy` ("nix" `BS.isInfixOf`)

  describe "storeVersion" $ do
    it "returns a version string" $ do
      withStore "auto" $ \store -> do
        ver <- storeVersion store
        ver `shouldSatisfy` (not . BS.null)

  describe "parseStorePath" $ do
    it "rejects invalid store paths" $ do
      withStore "auto" $ \store ->
        parseStorePath store "not-a-store-path" (\_ -> pure ())
          `shouldThrow` \(_ :: NixError) -> True

  describe "isValidPath" $ do
    it "returns False for a non-existent store path" $ do
      withStore "auto" $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-nonexistent"
        parseStorePath store fakePath $ \sp ->
          isValidPath store sp `shouldReturn` False

  describe "storePathName" $ do
    it "extracts the name component of a store path" $ do
      withStore "auto" $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-test-name"
        parseStorePath store fakePath $ \sp -> do
          name <- storePathName sp
          name `shouldBe` "test-name"

  describe "openStore/closeStore" $ do
    it "can manually open and close a store" $ do
      store <- openStore "auto"
      uri <- storeUri store
      uri `shouldSatisfy` (not . BS.null)
      closeStore store

  describe "parseStorePath'/freeStorePath" $ do
    it "parses and frees a store path" $ do
      withStore "auto" $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-test-free"
        sp <- parseStorePath' store fakePath
        name <- storePathName sp
        name `shouldBe` "test-free"
        freeStorePath sp

    it "rejects invalid store paths" $ do
      withStore "auto" $ \store ->
        parseStorePath' store "not-a-store-path"
          `shouldThrow` \(_ :: NixError) -> True
