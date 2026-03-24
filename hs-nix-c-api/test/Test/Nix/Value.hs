{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Value (spec) where

import qualified Data.ByteString as BS
import Test.Hspec

import Nix.Expr (valueForce)
import Nix.Init (initNix)
import Nix.Value
import Test.Nix.Util (eval, withEnv)

spec :: Spec
spec = describe "Nix.Value" $ before_ initNix $ do
  describe "type inspection" $ do
    it "identifies integer type" $ do
      withEnv $ \state -> do
        val <- eval state "42"
        getType state val `shouldReturn` TypeInt

    it "identifies float type" $ do
      withEnv $ \state -> do
        val <- eval state "3.14"
        getType state val `shouldReturn` TypeFloat

    it "identifies bool type" $ do
      withEnv $ \state -> do
        val <- eval state "false"
        getType state val `shouldReturn` TypeBool

    it "identifies string type" $ do
      withEnv $ \state -> do
        val <- eval state "\"test\""
        getType state val `shouldReturn` TypeString

    it "identifies null type" $ do
      withEnv $ \state -> do
        val <- eval state "null"
        getType state val `shouldReturn` TypeNull

    it "identifies attrs type" $ do
      withEnv $ \state -> do
        val <- eval state "{ }"
        getType state val `shouldReturn` TypeAttrs

    it "identifies list type" $ do
      withEnv $ \state -> do
        val <- eval state "[ ]"
        getType state val `shouldReturn` TypeList

    it "identifies function type" $ do
      withEnv $ \state -> do
        val <- eval state "x: x"
        getType state val `shouldReturn` TypeFunction

    it "identifies path type" $ do
      withEnv $ \state -> do
        val <- eval state "/tmp"
        getType state val `shouldReturn` TypePath

  describe "integer extraction" $ do
    it "extracts positive integers" $ do
      withEnv $ \state -> do
        val <- eval state "42"
        getInt state val `shouldReturn` 42

    it "extracts negative integers" $ do
      withEnv $ \state -> do
        val <- eval state "-7"
        getInt state val `shouldReturn` (-7)

    it "extracts zero" $ do
      withEnv $ \state -> do
        val <- eval state "0"
        getInt state val `shouldReturn` 0

    it "extracts large integers" $ do
      withEnv $ \state -> do
        val <- eval state "9223372036854775807"
        getInt state val `shouldReturn` 9223372036854775807

  describe "float extraction" $ do
    it "extracts positive floats" $ do
      withEnv $ \state -> do
        val <- eval state "3.14"
        f <- getFloat state val
        f `shouldSatisfy` (\x -> abs (x - 3.14) < 0.001)

    it "extracts negative floats" $ do
      withEnv $ \state -> do
        val <- eval state "-2.5"
        f <- getFloat state val
        f `shouldSatisfy` (\x -> abs (x + 2.5) < 0.001)

  describe "boolean extraction" $ do
    it "extracts true" $ do
      withEnv $ \state -> do
        val <- eval state "true"
        getBool state val `shouldReturn` True

    it "extracts false" $ do
      withEnv $ \state -> do
        val <- eval state "false"
        getBool state val `shouldReturn` False

  describe "string extraction" $ do
    it "extracts simple strings" $ do
      withEnv $ \state -> do
        val <- eval state "\"hello\""
        getString state val `shouldReturn` "hello"

    it "extracts empty strings" $ do
      withEnv $ \state -> do
        val <- eval state "\"\""
        getString state val `shouldReturn` ""

    it "extracts strings with special characters" $ do
      withEnv $ \state -> do
        val <- eval state "\"hello\\nworld\""
        s <- getString state val
        s `shouldSatisfy` ("hello" `BS.isInfixOf`)
        s `shouldSatisfy` ("world" `BS.isInfixOf`)

    it "extracts multiline strings" $ do
      withEnv $ \state -> do
        val <- eval state "''\n  line1\n  line2\n''"
        s <- getString state val
        s `shouldSatisfy` ("line1" `BS.isInfixOf`)
        s `shouldSatisfy` ("line2" `BS.isInfixOf`)

  describe "path extraction" $ do
    it "extracts paths" $ do
      withEnv $ \state -> do
        val <- eval state "/tmp"
        s <- getPathString state val
        s `shouldBe` "/tmp"

  describe "list operations" $ do
    it "gets list size" $ do
      withEnv $ \state -> do
        val <- eval state "[ 1 2 3 ]"
        getListSize state val `shouldReturn` 3

    it "gets empty list size" $ do
      withEnv $ \state -> do
        val <- eval state "[ ]"
        getListSize state val `shouldReturn` 0

    it "accesses list elements by index" $ do
      withEnv $ \state -> do
        val <- eval state "[ 10 20 30 ]"
        elem0 <- getListByIdx state val 0
        getInt state elem0 `shouldReturn` 10
        elem2 <- getListByIdx state val 2
        getInt state elem2 `shouldReturn` 30

  describe "attribute set operations" $ do
    it "gets attrs size" $ do
      withEnv $ \state -> do
        val <- eval state "{ a = 1; b = 2; c = 3; }"
        getAttrsSize state val `shouldReturn` 3

    it "gets empty attrs size" $ do
      withEnv $ \state -> do
        val <- eval state "{ }"
        getAttrsSize state val `shouldReturn` 0

    it "checks attribute existence" $ do
      withEnv $ \state -> do
        val <- eval state "{ x = 1; y = 2; }"
        hasAttrByName state val "x" `shouldReturn` True
        hasAttrByName state val "z" `shouldReturn` False

    it "accesses attributes by name" $ do
      withEnv $ \state -> do
        val <- eval state "{ answer = 42; }"
        attr <- getAttrByName state val "answer"
        getInt state attr `shouldReturn` 42

    it "accesses nested attributes" $ do
      withEnv $ \state -> do
        val <- eval state "{ a = { b = { c = 99; }; }; }"
        a <- getAttrByName state val "a"
        valueForce state a
        b <- getAttrByName state a "b"
        valueForce state b
        c <- getAttrByName state b "c"
        getInt state c `shouldReturn` 99
