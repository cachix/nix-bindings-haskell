module Main (main) where

import Test.Hspec

import qualified Test.Nix.C.Construction
import qualified Test.Nix.C.Expr
import qualified Test.Nix.C.Monad
import qualified Test.Nix.C.Settings
import qualified Test.Nix.C.Store
import qualified Test.Nix.C.Util
import qualified Test.Nix.C.Value

main :: IO ()
main = hspec $ do
  Test.Nix.C.Util.spec
  Test.Nix.C.Store.spec
  Test.Nix.C.Expr.spec
  Test.Nix.C.Value.spec
  Test.Nix.C.Construction.spec
  Test.Nix.C.Monad.spec
  Test.Nix.C.Settings.spec
