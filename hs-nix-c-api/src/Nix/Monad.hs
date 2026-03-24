{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE TypeApplications #-}

-- | The 'Nix' monad for safe, composable Nix operations.
--
-- @
-- result <- 'runNix' $ 'Nix.withStore' "local" $ \\store ->
--   'Nix.withEvalState' store $ \\state -> do
--     val <- 'Nix.evalFromString' state "1 + 2" "."
--     'Nix.valueForce' state val
--     'Nix.getInt' state val
-- -- result :: Either NixError Int64
-- @
module Nix.Monad
  ( Nix
  , runNix
  , runNixThrow
  , liftNix
  ) where

import Control.Exception (throwIO, try)
import Control.Monad.IO.Class (MonadIO)
import Control.Monad.Trans.Except (ExceptT (..))
import Nix.Context (NixError)

-- | A monad for composing Nix operations with automatic error handling.
--
-- Use 'runNix' to get @IO (Either NixError a)@, or
-- 'runNixThrow' to get @IO a@ (re-throwing errors as exceptions).
newtype Nix a = Nix {runNix :: IO (Either NixError a)}
  deriving (Functor, Applicative, Monad, MonadIO)
    via ExceptT NixError IO

-- | Run a 'Nix' action, re-throwing any 'NixError' as an exception.
runNixThrow :: Nix a -> IO a
runNixThrow m = either throwIO pure =<< runNix m

-- | Lift a throwing @IO@ action into the 'Nix' monad.
-- Catches any 'NixError' exception and converts it to 'Left'.
liftNix :: IO a -> Nix a
liftNix = Nix . try @NixError
