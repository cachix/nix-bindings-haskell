{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Settings (spec) where

import qualified Data.ByteString as BS
import Test.Hspec

import Nix.Unsafe.Init (initNix)
import Nix.Unsafe.Settings (getSetting, setSetting)

spec :: Spec
spec = describe "Nix.Settings" $ before_ initNix $ do
  describe "getSetting" $ do
    it "reads a known setting" $ do
      val <- getSetting "store"
      val `shouldSatisfy` (not . BS.null)

    -- NOTE: the Nix C API terminates the process with an uncaught nix::Error
    -- instead of returning an error code for unknown setting keys.
    -- it "throws on unknown setting" $ do
    --   getSetting "nonexistent-setting-xyz"
    --     `shouldThrow` \(_ :: NixError) -> True

  describe "setSetting" $ do
    it "sets and reads back a setting" $ do
      original <- getSetting "max-jobs"
      setSetting "max-jobs" "7"
      val <- getSetting "max-jobs"
      val `shouldBe` "7"
      setSetting "max-jobs" original

    -- NOTE: same as above — the Nix C API terminates the process with an
    -- uncaught nix::Error instead of returning an error code.
    -- it "throws on unknown setting" $ do
    --   setSetting "nonexistent-setting-xyz" "value"
    --     `shouldThrow` \(_ :: NixError) -> True
