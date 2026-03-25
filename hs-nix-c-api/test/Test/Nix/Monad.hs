{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

module Test.Nix.Monad (spec) where

import Control.Monad.IO.Class (liftIO)
import Data.IORef (newIORef, readIORef, writeIORef)
import Data.ByteString (ByteString)
import Data.Int (Int64)
import Test.Hspec

import Nix

spec :: Spec
spec = describe "Nix monad" $ do
  describe "runNix" $ do
    it "returns Right on success" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "1 + 2" "."
            fromValue @Int64 state val
      result `shouldBe` Right 3

    it "returns Left on type mismatch" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "42" "."
            getString state val
      case result of
        Left (NixTypeMismatch TypeString TypeInt) -> pure ()
        other -> expectationFailure $ "Expected Left NixTypeMismatch, got: " <> show other

    it "returns Left on eval error" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "throw \"boom\"" "."
            valueForce state val
      case result of
        Left (NixCError {}) -> pure ()
        other -> expectationFailure $ "Expected Left NixCError, got: " <> show other

  describe "error short-circuiting" $ do
    it "does not execute code after a failure" $ do
      ref <- newIORef False
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "throw \"fail\"" "."
            valueForce state val
            -- Should not reach here
            liftIO $ writeIORef ref True
      readIORef ref `shouldReturn` False
      case result of
        Left _ -> pure ()
        Right _ -> expectationFailure "Expected Left"

  describe "monadic value extraction" $ do
    it "fromValue works in the Nix monad" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "\"hello\"" "."
            fromValue @ByteString state val
      result `shouldBe` Right "hello"

    it "getAttr works in the Nix monad" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "{ answer = 42; }" "."
            getAttr @Int64 state val "answer"
      result `shouldBe` Right 42

    it "getAttrPath works in the Nix monad" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "{ a = { b = { c = 99; }; }; }" "."
            getAttrPath @Int64 state val ["a", "b", "c"]
      result `shouldBe` Right 99

    it "getAttrPath returns Left for missing attr in Nix monad" $ do
      result <- runNix $ do
        initNix
        withStore "daemon" $ \store ->
          withEvalState store $ \state -> do
            val <- evalFromString state "{ a = 1; }" "."
            getAttrPath @Int64 state val ["a", "b"]
      case result of
        Left _ -> pure ()
        Right _ -> expectationFailure "Expected Left"
