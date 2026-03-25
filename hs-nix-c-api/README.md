# hs-nix-c-api

Safe, ergonomic Haskell bindings to the [Nix C API](https://nix.dev/manual/nix/latest/c-api).

Built on top of [hs-nix-c-api-sys](../hs-nix-c-api-sys/) (auto-generated raw FFI bindings).

## Three usage styles

### The Nix monad (`import Nix`)

Errors short-circuit automatically.
Use `runNix` to get `Either NixError a`, or `runNixThrow` to re-throw.

```haskell
{-# LANGUAGE OverloadedStrings #-}
import Nix

main :: IO ()
main = do
  result <- runNix $ do
    initNix
    withStore "daemon" $ \store ->
      withEvalState store $ \state -> do
        val <- evalFromString state "1 + 2" "."
        valueForce state val
        getInt state val
  print result -- Right 3
```

### Throwing IO (`import Nix.Throw`)

Direct IO functions that throw `NixError` on failure.
Works naturally with `bracket`, `shouldThrow`, and other exception-based code.

```haskell
{-# LANGUAGE OverloadedStrings #-}
import Nix.Throw

main :: IO ()
main = do
  initNix
  withStore "daemon" $ \store ->
    withEvalState store $ \state -> do
      val <- evalFromString state "1 + 2" "."
      valueForce state val
      n <- getInt state val
      print n -- 3
```

### Either via `runNix`

```haskell
result <- runNix $ evalFromString state expr "."
case result of
  Left err -> handleError err
  Right val -> useValue val
```

## Error types

```haskell
data NixErrorKind
  = NixErrUnknown | NixErrOverflow | NixErrKey
  | NixErrNixError | NixErrRecoverable

data NixError = NixError
  { nixErrorKind    :: NixErrorKind
  , nixErrorMessage :: ByteString
  , nixErrorInfo    :: ByteString  -- stack trace / source location
  }
```

## Safe accessors

Value extraction functions check the type before accessing:

```haskell
val <- evalFromString state "42" "."
valueForce state val
getInt state val     -- OK: returns 42
getString state val  -- throws: "Type mismatch: expected string, got int"
```

Unchecked variants (`unsafeGetInt`, `unsafeGetFloat`, etc.) are available via `import Nix.Value` for performance-sensitive code.

## Modules

| Module | Purpose |
|---|---|
| `Nix` | Nix monad API (recommended) |
| `Nix.Throw` | Throwing IO API |
| `Nix.Monad` | `Nix` type, `runNix`, `runNixThrow`, `liftNix` |
| `Nix.Context` | `NixError`, `NixErrorKind` |
| `Nix.Store` | Store operations (throwing) |
| `Nix.Expr` | Expression evaluation (throwing) |
| `Nix.Value` | Value extraction (throwing) |
| `Nix.Init` | Library initialization |
