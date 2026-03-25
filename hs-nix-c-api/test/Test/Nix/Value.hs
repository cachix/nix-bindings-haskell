{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

module Test.Nix.Value (spec) where

import qualified Data.ByteString as BS
import Data.Int (Int64)
import Test.Hspec

import Nix.Context (NixError (..))
import Nix.Unsafe.Expr (valueForce)
import Nix.Unsafe.Init (initNix)
import Nix.Unsafe.Value
import Test.Nix.Util (eval, withEnv)

spec :: Spec
spec = describe "Nix.Value" $ before_ initNix $ do
  describe "type inspection" $ do
    it "identifies integer type" $ withEnv $ \state -> do
      val <- eval state "42"
      getType state val `shouldReturn` TypeInt

    it "identifies float type" $ withEnv $ \state -> do
      val <- eval state "3.14"
      getType state val `shouldReturn` TypeFloat

    it "identifies bool type" $ withEnv $ \state -> do
      val <- eval state "false"
      getType state val `shouldReturn` TypeBool

    it "identifies string type" $ withEnv $ \state -> do
      val <- eval state "\"test\""
      getType state val `shouldReturn` TypeString

    it "identifies null type" $ withEnv $ \state -> do
      val <- eval state "null"
      getType state val `shouldReturn` TypeNull

    it "identifies attrs type" $ withEnv $ \state -> do
      val <- eval state "{ }"
      getType state val `shouldReturn` TypeAttrs

    it "identifies list type" $ withEnv $ \state -> do
      val <- eval state "[ ]"
      getType state val `shouldReturn` TypeList

    it "identifies function type" $ withEnv $ \state -> do
      val <- eval state "x: x"
      getType state val `shouldReturn` TypeFunction

    it "identifies path type" $ withEnv $ \state -> do
      val <- eval state "/tmp"
      getType state val `shouldReturn` TypePath

  describe "integer extraction" $ do
    it "extracts positive integers" $ withEnv $ \state -> do
      val <- eval state "42"
      getInt state val `shouldReturn` 42

    it "extracts negative integers" $ withEnv $ \state -> do
      val <- eval state "-7"
      getInt state val `shouldReturn` (-7)

    it "extracts zero" $ withEnv $ \state -> do
      val <- eval state "0"
      getInt state val `shouldReturn` 0

    it "extracts large integers" $ withEnv $ \state -> do
      val <- eval state "9223372036854775807"
      getInt state val `shouldReturn` 9223372036854775807

  describe "float extraction" $ do
    it "extracts positive floats" $ withEnv $ \state -> do
      val <- eval state "3.14"
      f <- getFloat state val
      f `shouldSatisfy` (\x -> abs (x - 3.14) < 0.001)

    it "extracts negative floats" $ withEnv $ \state -> do
      val <- eval state "-2.5"
      f <- getFloat state val
      f `shouldSatisfy` (\x -> abs (x + 2.5) < 0.001)

  describe "boolean extraction" $ do
    it "extracts true" $ withEnv $ \state -> do
      val <- eval state "true"
      getBool state val `shouldReturn` True

    it "extracts false" $ withEnv $ \state -> do
      val <- eval state "false"
      getBool state val `shouldReturn` False

  describe "string extraction" $ do
    it "extracts simple strings" $ withEnv $ \state -> do
      val <- eval state "\"hello\""
      getString state val `shouldReturn` "hello"

    it "extracts empty strings" $ withEnv $ \state -> do
      val <- eval state "\"\""
      getString state val `shouldReturn` ""

    it "extracts strings with special characters" $ withEnv $ \state -> do
      val <- eval state "\"hello\\nworld\""
      s <- getString state val
      s `shouldSatisfy` ("hello" `BS.isInfixOf`)
      s `shouldSatisfy` ("world" `BS.isInfixOf`)

    it "extracts multiline strings" $ withEnv $ \state -> do
      val <- eval state "''\n  line1\n  line2\n''"
      s <- getString state val
      s `shouldSatisfy` ("line1" `BS.isInfixOf`)
      s `shouldSatisfy` ("line2" `BS.isInfixOf`)

  describe "path extraction" $ do
    it "extracts paths" $ withEnv $ \state -> do
      val <- eval state "/tmp"
      s <- getPathString state val
      s `shouldBe` "/tmp"

  describe "list operations" $ do
    it "gets list size" $ withEnv $ \state -> do
      val <- eval state "[ 1 2 3 ]"
      getListSize state val `shouldReturn` 3

    it "gets empty list size" $ withEnv $ \state -> do
      val <- eval state "[ ]"
      getListSize state val `shouldReturn` 0

    it "accesses list elements by index" $ withEnv $ \state -> do
      val <- eval state "[ 10 20 30 ]"
      elem0 <- getListByIdx state val 0
      getInt state elem0 `shouldReturn` 10
      elem2 <- getListByIdx state val 2
      getInt state elem2 `shouldReturn` 30

  describe "attribute set operations" $ do
    it "gets attrs size" $ withEnv $ \state -> do
      val <- eval state "{ a = 1; b = 2; c = 3; }"
      getAttrsSize state val `shouldReturn` 3

    it "gets empty attrs size" $ withEnv $ \state -> do
      val <- eval state "{ }"
      getAttrsSize state val `shouldReturn` 0

    it "checks attribute existence" $ withEnv $ \state -> do
      val <- eval state "{ x = 1; y = 2; }"
      hasAttrByName state val "x" `shouldReturn` True
      hasAttrByName state val "z" `shouldReturn` False

    it "accesses attributes by name" $ withEnv $ \state -> do
      val <- eval state "{ answer = 42; }"
      attr <- getAttrByName state val "answer"
      getInt state attr `shouldReturn` 42

    it "throws NixMissingAttr for missing attributes" $ withEnv $ \state -> do
      val <- eval state "{ a = 1; }"
      getAttrByName state val "missing"
        `shouldThrow` \case
          NixMissingAttr name -> name == "missing"
          _ -> False

    it "lookupAttr returns Nothing for missing attributes" $ withEnv $ \state -> do
      val <- eval state "{ a = 1; }"
      result <- lookupAttr state val "missing"
      case result of
        Nothing -> pure ()
        Just _ -> expectationFailure "Expected Nothing for missing attribute"

    it "lookupAttr returns Just for existing attributes" $ withEnv $ \state -> do
      val <- eval state "{ answer = 42; }"
      result <- lookupAttr state val "answer"
      case result of
        Nothing -> expectationFailure "Expected Just, got Nothing"
        Just attr -> getInt state attr `shouldReturn` 42

    it "accesses nested attributes" $ withEnv $ \state -> do
      val <- eval state "{ a = { b = { c = 99; }; }; }"
      a <- getAttrByName state val "a"
      valueForce state a
      b <- getAttrByName state a "b"
      valueForce state b
      c <- getAttrByName state b "c"
      getInt state c `shouldReturn` 99

  describe "type mismatch errors" $ do
    it "throws NixTypeMismatch with expected and actual types" $ withEnv $ \state -> do
      val <- eval state "42"
      getString state val
        `shouldThrow` \case
          NixTypeMismatch expected actual ->
            expected == TypeString && actual == TypeInt
          _ -> False

  describe "FromValue" $ do
    it "extracts Int64 via fromValue" $ withEnv $ \state -> do
      val <- eval state "42"
      fromValue @Int64 state val `shouldReturn` Right 42

    it "extracts Double via fromValue" $ withEnv $ \state -> do
      val <- eval state "3.14"
      result <- fromValue @Double state val
      case result of
        Left err -> expectationFailure $ "Expected Right, got Left: " <> show err
        Right d -> d `shouldSatisfy` (\x -> abs (x - 3.14) < 0.001)

    it "extracts Bool via fromValue" $ withEnv $ \state -> do
      val <- eval state "true"
      fromValue @Bool state val `shouldReturn` Right True

    it "extracts ByteString via fromValue" $ withEnv $ \state -> do
      val <- eval state "\"hello\""
      fromValue @BS.ByteString state val `shouldReturn` Right "hello"

    it "returns Left on type mismatch" $ withEnv $ \state -> do
      val <- eval state "42"
      result <- fromValue @BS.ByteString state val
      case result of
        Left (NixTypeMismatch _ _) -> pure ()
        other -> expectationFailure $ "Expected Left NixTypeMismatch, got: " <> show other

  describe "getAttr" $ do
    it "extracts a typed attribute" $ withEnv $ \state -> do
      val <- eval state "{ answer = 42; }"
      getAttr @Int64 state val "answer" `shouldReturn` Right 42

    it "returns Left for missing attribute" $ withEnv $ \state -> do
      val <- eval state "{ a = 1; }"
      result <- getAttr @Int64 state val "missing"
      case result of
        Left (NixMissingAttr _) -> pure ()
        other -> expectationFailure $ "Expected Left NixMissingAttr, got: " <> show other

  describe "getAttrPath" $ do
    it "extracts a nested attribute" $ withEnv $ \state -> do
      val <- eval state "{ a = { b = { c = 99; }; }; }"
      getAttrPath @Int64 state val ["a", "b", "c"] `shouldReturn` Right 99

    it "returns Left for missing intermediate attribute" $ withEnv $ \state -> do
      val <- eval state "{ a = 1; }"
      result <- getAttrPath @Int64 state val ["a", "b", "c"]
      case result of
        Left _ -> pure ()
        Right _ -> expectationFailure "Expected Left for missing intermediate"

    it "extracts with empty path (acts as fromValue)" $ withEnv $ \state -> do
      val <- eval state "42"
      getAttrPath @Int64 state val [] `shouldReturn` Right 42
