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
      withStore "daemon" $ \_ -> pure ()

    it "can open the daemon store" $ do
      withStore "daemon" $ \_ -> pure ()

  describe "storeUri" $ do
    it "returns a non-empty URI" $ do
      withStore "daemon" $ \store -> do
        uri <- storeUri store
        uri `shouldSatisfy` (not . BS.null)

  describe "storeDir" $ do
    it "returns the store directory" $ do
      withStore "daemon" $ \store -> do
        dir <- storeDir store
        dir `shouldSatisfy` (not . BS.null)
        dir `shouldSatisfy` ("nix" `BS.isInfixOf`)

  describe "storeVersion" $ do
    it "returns a version string" $ do
      withStore "daemon" $ \store -> do
        ver <- storeVersion store
        ver `shouldSatisfy` (not . BS.null)

  describe "parseStorePath" $ do
    it "rejects invalid store paths" $ do
      withStore "daemon" $ \store ->
        parseStorePath store "not-a-store-path" (\_ -> pure ())
          `shouldThrow` \(_ :: NixError) -> True

  describe "isValidPath" $ do
    it "returns False for a non-existent store path" $ do
      withStore "daemon" $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-nonexistent"
        parseStorePath store fakePath $ \sp ->
          isValidPath store sp `shouldReturn` False

  describe "storePathName" $ do
    it "extracts the name component of a store path" $ do
      withStore "daemon" $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-test-name"
        parseStorePath store fakePath $ \sp -> do
          name <- storePathName sp
          name `shouldBe` "test-name"
