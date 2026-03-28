{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.C.Settings (spec) where

import qualified Data.ByteString as BS
import Test.Hspec

import Nix.C.Context (NixError (..))
import Nix.C.Unsafe.Init (initNix)
import Nix.C.Unsafe.Settings (getSetting, setSetting)

spec :: Spec
spec = describe "Nix.C.Settings" $ before_ initNix $ do
  describe "getSetting" $ do
    it "reads a known setting" $ do
      val <- getSetting "store"
      val `shouldSatisfy` (not . BS.null)

    it "throws on unknown setting" $ do
      getSetting "nonexistent-setting-xyz"
        `shouldThrow` \case
          NixCError {} -> True
          _ -> False

  describe "setSetting" $ do
    it "sets and reads back a setting" $ do
      original <- getSetting "max-jobs"
      setSetting "max-jobs" "7"
      val <- getSetting "max-jobs"
      val `shouldBe` "7"
      setSetting "max-jobs" original

    it "throws on unknown setting" $ do
      setSetting "nonexistent-setting-xyz" "value"
        `shouldThrow` \case
          NixCError {} -> True
          _ -> False
