{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE TypeApplications #-}

-- | The 'Nix' monad for safe, composable Nix operations.
--
-- @
-- result <- 'runNix' $ 'Nix.C.withStore' "local" $ \\store ->
--   'Nix.C.withEvalState' store $ \\state -> do
--     val <- 'Nix.C.evalFromString' state "1 + 2" [osp|.|]
--     'Nix.C.fromValue' \@Int64 state val
-- -- result :: Either NixError Int64
-- @
module Nix.C.Monad
  ( Nix
  , runNix
  , runNixThrow
  , liftNix
  , liftEitherNix
  , withBracketNix
  ) where

import Control.Exception (mask, onException, throwIO, try)
import Control.Monad.IO.Class (MonadIO)
import Control.Monad.Trans.Except (ExceptT (..))
import Nix.C.Context (NixError)

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

-- | Lift an @IO (Either NixError a)@ action into the 'Nix' monad.
liftEitherNix :: IO (Either NixError a) -> Nix a
liftEitherNix = Nix

-- | Bracket pattern for the 'Nix' monad.
--
-- Unlike @liftNix (bracket open close (runNixThrow . f))@,
-- this avoids a throw\/catch round-trip: a 'NixError' from @f@ is
-- returned as 'Left' without being thrown as an exception.
-- The cleanup action runs in @IO@ and always executes.
withBracketNix :: IO a -> (a -> IO ()) -> (a -> Nix b) -> Nix b
withBracketNix open close f = Nix $
  mask $ \restore -> do
    resource <- open
    result <- restore (runNix (f resource))
      `onException` close resource
    close resource
    pure result
