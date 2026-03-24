{-# LANGUAGE OverloadedStrings #-}

module Test.Nix.Util
  ( spec
  , withEnv
  , eval
  ) where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BS8
import Test.Hspec

import Nix.Expr (EvalState, evalFromString, valueForce, withEvalState)
import Nix.Init (initNix, nixVersion)
import Nix.Store (withStore)
import Nix.Value (Value)

spec :: Spec
spec = describe "Nix.Init" $ before_ initNix $ do
  it "initializes without error" $ do
    -- initNix is idempotent; calling it again should succeed
    initNix

  it "returns a non-empty version string" $ do
    ver <- nixVersion
    ver `shouldSatisfy` (not . BS.null)

  it "returns a version that looks like a semver" $ do
    ver <- nixVersion
    -- Nix versions are like "2.24.0" or "2.24.0pre..."
    ver `shouldSatisfy` BS8.any (== '.')

-- | Open a local store and eval state, then run an action.
withEnv :: (EvalState -> IO a) -> IO a
withEnv f = withStore "daemon" $ \store -> withEvalState store f

-- | Evaluate and force a Nix expression string.
eval :: EvalState -> ByteString -> IO Value
eval state expr = do
  val <- evalFromString state expr "."
  valueForce state val
  pure val
