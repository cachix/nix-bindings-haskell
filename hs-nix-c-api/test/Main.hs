module Main (main) where

import Test.Hspec

import qualified Test.Nix.Construction
import qualified Test.Nix.Expr
import qualified Test.Nix.Monad
import qualified Test.Nix.Settings
import qualified Test.Nix.Store
import qualified Test.Nix.Util
import qualified Test.Nix.Value

main :: IO ()
main = hspec $ do
  Test.Nix.Util.spec
  Test.Nix.Store.spec
  Test.Nix.Expr.spec
  Test.Nix.Value.spec
  Test.Nix.Construction.spec
  Test.Nix.Monad.spec
  Test.Nix.Settings.spec
