{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeApplications #-}

module Test.Nix.Construction (spec) where

import Data.ByteString (ByteString)
import Data.Int (Int64)
import System.OsPath (osp)
import Test.Hspec

import Nix.Unsafe.Expr (valueCall, valueCallMulti, valueForce)
import Nix.Unsafe.Init (initNix)
import Nix.Unsafe.Value
import Test.Nix.Util (eval, withEnv)

spec :: Spec
spec = describe "Nix.Value construction" $ before_ initNix $ do
  describe "mkInt" $ do
    it "constructs an integer" $ withEnv $ \state -> do
      val <- mkInt state 42
      getType state val `shouldReturn` TypeInt
      getInt state val `shouldReturn` 42

    it "constructs negative integers" $ withEnv $ \state -> do
      val <- mkInt state (-7)
      getInt state val `shouldReturn` (-7)

    it "constructs zero" $ withEnv $ \state -> do
      val <- mkInt state 0
      getInt state val `shouldReturn` 0

  describe "mkFloat" $ do
    it "constructs a float" $ withEnv $ \state -> do
      val <- mkFloat state 3.14
      getType state val `shouldReturn` TypeFloat
      f <- getFloat state val
      f `shouldSatisfy` (\x -> abs (x - 3.14) < 0.001)

  describe "mkBool" $ do
    it "constructs true" $ withEnv $ \state -> do
      val <- mkBool state True
      getType state val `shouldReturn` TypeBool
      getBool state val `shouldReturn` True

    it "constructs false" $ withEnv $ \state -> do
      val <- mkBool state False
      getBool state val `shouldReturn` False

  describe "mkNull" $ do
    it "constructs null" $ withEnv $ \state -> do
      val <- mkNull state
      getType state val `shouldReturn` TypeNull

  describe "mkString" $ do
    it "constructs a string" $ withEnv $ \state -> do
      val <- mkString state "hello"
      getType state val `shouldReturn` TypeString
      getString state val `shouldReturn` "hello"

    it "constructs an empty string" $ withEnv $ \state -> do
      val <- mkString state ""
      getString state val `shouldReturn` ""

  describe "mkPath" $ do
    it "constructs a path" $ withEnv $ \state -> do
      val <- mkPath state [osp|/tmp|]
      getType state val `shouldReturn` TypePath
      getPathString state val `shouldReturn` [osp|/tmp|]

  describe "mkList" $ do
    it "constructs an empty list" $ withEnv $ \state -> do
      val <- mkList state []
      getType state val `shouldReturn` TypeList
      getListSize state val `shouldReturn` 0

    it "constructs a list of integers" $ withEnv $ \state -> do
      elems <- mapM (mkInt state) [10, 20, 30]
      val <- mkList state elems
      getListSize state val `shouldReturn` 3
      e0 <- getListByIdx state val 0
      getInt state e0 `shouldReturn` 10
      e2 <- getListByIdx state val 2
      getInt state e2 `shouldReturn` 30

    it "constructs a heterogeneous list" $ withEnv $ \state -> do
      i <- mkInt state 1
      s <- mkString state "two"
      b <- mkBool state True
      val <- mkList state [i, s, b]
      getListSize state val `shouldReturn` 3

  describe "mkAttrs" $ do
    it "constructs an empty attrset" $ withEnv $ \state -> do
      val <- mkAttrs state []
      getType state val `shouldReturn` TypeAttrs
      getAttrsSize state val `shouldReturn` 0

    it "constructs an attrset" $ withEnv $ \state -> do
      nameVal <- mkString state "hello"
      countVal <- mkInt state 42
      val <- mkAttrs state [("name", nameVal), ("count", countVal)]
      getAttrsSize state val `shouldReturn` 2
      n <- getAttrByName state val "name"
      getString state n `shouldReturn` "hello"
      c <- getAttrByName state val "count"
      getInt state c `shouldReturn` 42

    it "lookupAttr works on constructed attrsets" $ withEnv $ \state -> do
      v <- mkInt state 1
      val <- mkAttrs state [("x", v)]
      lookupAttr state val "x" >>= \case
        Just attr -> getInt state attr `shouldReturn` 1
        Nothing -> expectationFailure "Expected Just"
      result <- lookupAttr state val "missing"
      case result of
        Nothing -> pure ()
        Just _ -> expectationFailure "Expected Nothing for missing attribute"

  describe "mkApply" $ do
    it "constructs a lazy application" $ withEnv $ \state -> do
      fn <- eval state "x: x + 1"
      arg <- mkInt state 41
      val <- mkApply state fn arg
      getType state val `shouldReturn` TypeThunk
      valueForce state val
      getInt state val `shouldReturn` 42

  describe "copyValue" $ do
    it "copies a value" $ withEnv $ \state -> do
      orig <- mkInt state 99
      copy <- copyValue state orig
      getInt state copy `shouldReturn` 99

  describe "valueCall" $ do
    it "calls a function with one argument" $ withEnv $ \state -> do
      fn <- eval state "x: x * 2"
      arg <- mkInt state 21
      result <- valueCall state fn arg
      getInt state result `shouldReturn` 42

  describe "valueCallMulti" $ do
    it "calls a multi-arg function" $ withEnv $ \state -> do
      fn <- eval state "x: y: x + y"
      a <- mkInt state 10
      b <- mkInt state 32
      result <- valueCallMulti state fn [a, b]
      getInt state result `shouldReturn` 42

  describe "ToValue" $ do
    it "converts Int64" $ withEnv $ \state -> do
      val <- toValue state (42 :: Int64)
      getInt state val `shouldReturn` 42

    it "converts Double" $ withEnv $ \state -> do
      val <- toValue state (3.14 :: Double)
      f <- getFloat state val
      f `shouldSatisfy` (\x -> abs (x - 3.14) < 0.001)

    it "converts Bool" $ withEnv $ \state -> do
      val <- toValue state True
      getBool state val `shouldReturn` True

    it "converts ByteString" $ withEnv $ \state -> do
      val <- toValue state ("hello" :: ByteString)
      getString state val `shouldReturn` "hello"

    it "converts ()" $ withEnv $ \state -> do
      val <- toValue state ()
      getType state val `shouldReturn` TypeNull

    it "converts Value (identity)" $ withEnv $ \state -> do
      orig <- mkInt state 7
      val <- toValue state orig
      getInt state val `shouldReturn` 7

    it "converts [Value]" $ withEnv $ \state -> do
      elems <- mapM (mkInt state) [1, 2, 3]
      val <- toValue state elems
      getListSize state val `shouldReturn` 3
      e0 <- getListByIdx state val 0
      getInt state e0 `shouldReturn` 1

    it "converts [(ByteString, Value)]" $ withEnv $ \state -> do
      a <- mkInt state 1
      b <- mkInt state 2
      val <- toValue state [("a" :: ByteString, a), ("b", b)]
      getAttrsSize state val `shouldReturn` 2
      av <- getAttrByName state val "a"
      getInt state av `shouldReturn` 1

  describe "round-trip" $ do
    it "constructed values can be passed to Nix functions" $ withEnv $ \state -> do
      fn <- eval state "xs: builtins.length xs"
      elems <- mapM (mkInt state) [1, 2, 3, 4, 5]
      list <- mkList state elems
      result <- valueCall state fn list
      getInt state result `shouldReturn` 5

    it "constructed attrsets can be accessed by Nix" $ withEnv $ \state -> do
      fn <- eval state "x: x.name"
      nameVal <- mkString state "world"
      attrs <- mkAttrs state [("name", nameVal)]
      result <- valueCall state fn attrs
      getString state result `shouldReturn` "world"
