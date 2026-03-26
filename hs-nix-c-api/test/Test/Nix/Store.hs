{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Store (spec) where

import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BS8
import System.IO.Temp (withSystemTempDirectory)
import System.Info (os)
import Test.Hspec

import Nix.Context (NixError)
import Nix.Unsafe.Init (initNix)
import Nix.Unsafe.Store

-- | Open a test store. On macOS uses the daemon; on Linux uses a
-- temporary local store so tests work inside the Nix sandbox.
withTestStore :: (Store -> IO a) -> IO a
withTestStore f
  | os == "darwin" = withStore "daemon" f
  | otherwise =
      withSystemTempDirectory "nix-test-store" $ \tmp ->
        withStore (BS8.pack $ "local?root=" <> tmp) f

-- | Run an action with a suitable store URI.
withTestStoreUri :: (BS.ByteString -> IO a) -> IO a
withTestStoreUri f
  | os == "darwin" = f "daemon"
  | otherwise =
      withSystemTempDirectory "nix-test-store" $ \tmp ->
        f (BS8.pack $ "local?root=" <> tmp)

spec :: Spec
spec = describe "Nix.Store" $ before_ initNix $ do
  describe "withStore" $ do
    it "can open and close a store" $ do
      withTestStore $ \_ -> pure ()

  describe "storeUri" $ do
    it "returns a non-empty URI" $ do
      withTestStore $ \store -> do
        uri <- storeUri store
        uri `shouldSatisfy` (not . BS.null)

  describe "storeDir" $ do
    it "returns the store directory" $ do
      withTestStore $ \store -> do
        dir <- storeDir store
        dir `shouldSatisfy` (not . BS.null)
        dir `shouldSatisfy` ("nix" `BS.isInfixOf`)

  describe "storeVersion" $ do
    it "returns a version string" $ do
      withTestStore $ \store -> do
        ver <- storeVersion store
        ver `shouldSatisfy` (not . BS.null)

  describe "parseStorePath" $ do
    it "rejects invalid store paths" $ do
      withTestStore $ \store ->
        parseStorePath store "not-a-store-path" (\_ -> pure ())
          `shouldThrow` \(_ :: NixError) -> True

  describe "isValidPath" $ do
    it "returns False for a non-existent store path" $ do
      withTestStore $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-nonexistent"
        parseStorePath store fakePath $ \sp ->
          isValidPath store sp `shouldReturn` False

  describe "storePathName" $ do
    it "extracts the name component of a store path" $ do
      withTestStore $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-test-name"
        parseStorePath store fakePath $ \sp -> do
          name <- storePathName sp
          name `shouldBe` "test-name"

  describe "openStore/closeStore" $ do
    it "can manually open and close a store" $ do
      withTestStoreUri $ \uri -> do
        store <- openStore uri
        u <- storeUri store
        u `shouldSatisfy` (not . BS.null)
        closeStore store

  describe "parseStorePath'/freeStorePath" $ do
    it "parses and frees a store path" $ do
      withTestStore $ \store -> do
        dir <- storeDir store
        let fakePath = dir <> "/00000000000000000000000000000000-test-free"
        sp <- parseStorePath' store fakePath
        name <- storePathName sp
        name `shouldBe` "test-free"
        freeStorePath sp

    it "rejects invalid store paths" $ do
      withTestStore $ \store ->
        parseStorePath' store "not-a-store-path"
          `shouldThrow` \(_ :: NixError) -> True
