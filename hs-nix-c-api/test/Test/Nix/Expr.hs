{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Expr (spec) where

import Test.Hspec

import Nix.Context (NixError)
import Nix.Expr
import Nix.Init (initNix)
import Nix.Value
import Test.Nix.Util (eval, withEnv)

spec :: Spec
spec = describe "Nix.Expr" $ before_ initNix $ do
  describe "withEvalState" $ do
    it "creates and destroys an eval state" $ do
      withEnv $ \_ -> pure ()

  describe "evalFromString" $ do
    it "evaluates integer arithmetic" $ do
      withEnv $ \state -> do
        val <- eval state "1 + 2"
        getType state val `shouldReturn` TypeInt
        getInt state val `shouldReturn` 3

    it "evaluates a string literal" $ do
      withEnv $ \state -> do
        val <- eval state "\"hello world\""
        getType state val `shouldReturn` TypeString
        getString state val `shouldReturn` "hello world"

    it "evaluates a boolean" $ do
      withEnv $ \state -> do
        val <- eval state "true"
        getType state val `shouldReturn` TypeBool
        getBool state val `shouldReturn` True

    it "evaluates a float" $ do
      withEnv $ \state -> do
        val <- eval state "1.5"
        getType state val `shouldReturn` TypeFloat
        getFloat state val `shouldReturn` 1.5

    it "evaluates null" $ do
      withEnv $ \state -> do
        val <- eval state "null"
        getType state val `shouldReturn` TypeNull

    it "evaluates a list" $ do
      withEnv $ \state -> do
        val <- eval state "[ 1 2 3 ]"
        getType state val `shouldReturn` TypeList
        getListSize state val `shouldReturn` 3

    it "evaluates an attribute set" $ do
      withEnv $ \state -> do
        val <- eval state "{ x = 1; y = 2; }"
        getType state val `shouldReturn` TypeAttrs
        getAttrsSize state val `shouldReturn` 2

    it "evaluates a function application" $ do
      withEnv $ \state -> do
        val <- eval state "(x: x + 1) 41"
        getInt state val `shouldReturn` 42

    it "evaluates let expressions" $ do
      withEnv $ \state -> do
        val <- eval state "let x = 10; y = 20; in x + y"
        getInt state val `shouldReturn` 30

    it "evaluates builtins.length" $ do
      withEnv $ \state -> do
        val <- eval state "builtins.length [ 1 2 3 4 5 ]"
        getInt state val `shouldReturn` 5

    it "evaluates string interpolation" $ do
      withEnv $ \state -> do
        val <- eval state "let name = \"world\"; in \"hello ${name}\""
        getString state val `shouldReturn` "hello world"

    it "reports errors for invalid expressions" $ do
      withEnv $ \state ->
        (do val <- evalFromString state "let in" "."
            valueForce state val
        ) `shouldThrow` \(_ :: NixError) -> True

    it "can deeply force a nested structure" $ do
      withEnv $ \state -> do
        val <- evalFromString state "{ a = { b = 1; }; c = [ 2 3 ]; }" "."
        valueForceDeep state val
        getType state val `shouldReturn` TypeAttrs

    it "evaluates recursive attribute sets" $ do
      withEnv $ \state -> do
        val <- eval state "rec { x = 1; y = x + 1; }"
        getAttrsSize state val `shouldReturn` 2

    it "evaluates builtins.map" $ do
      withEnv $ \state -> do
        val <- eval state "builtins.length (builtins.map (x: x * 2) [ 1 2 3 ])"
        getInt state val `shouldReturn` 3
