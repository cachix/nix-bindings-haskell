# nix-bindings

Safe, ergonomic Haskell bindings to the [Nix C API](https://nix.dev/manual/nix/latest/c-api).

Built on top of [nix-bindings-sys](../nix-bindings-sys/) (auto-generated raw FFI bindings).

## Three usage styles

### The Nix monad (`import Nix.C`)

Errors short-circuit automatically.
Use `runNix` to get `Either NixError a`, or `runNixThrow` to re-throw.

```haskell
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
import Data.Int (Int64)
import Nix.C

main :: IO ()
main = do
  initNix
  result <- runNix $
    withStore "daemon" $ \store ->
      withEvalState store $ \state ->
        evalAs @Int64 state "1 + 2"
  print result -- Right 3
```

### Throwing IO (`import Nix.C.Unsafe`)

Direct IO functions that throw `NixError` on failure.
Works naturally with `bracket`, `shouldThrow`, and other exception-based code.

```haskell
{-# LANGUAGE OverloadedStrings #-}
import Nix.C.Unsafe

main :: IO ()
main = do
  initNix
  withStore "daemon" $ \store ->
    withEvalState store $ \state -> do
      n <- evalAs @Int64 state "1 + 2"
      print n -- 3
```


## Type-directed extraction (`FromValue`)

Use `fromValue` with type applications for safe, type-directed extraction that forces the value automatically:

```haskell
{-# LANGUAGE TypeApplications #-}

-- Returns Either NixError Int64
n <- fromValue @Int64 state val

-- Typed attribute access
name <- getAttr @ByteString state val "name"

-- Nested attribute paths
n <- getAttrPath @Int64 state val ["a", "b", "c"]
```

## Error types

```haskell
data NixError
  = NixTypeMismatch   { nixExpectedType :: NixType, nixActualType :: NixType }
  | NixMissingAttr    { nixMissingAttrName :: ByteString }
  | NixIndexOutOfBounds { nixOutOfBoundsIndex :: Int }
  | NixCError         { nixCErrorKind :: NixErrorKind
                       , nixCErrorMessage :: ByteString
                       , nixCErrorInfo :: ByteString }
```

Callers can pattern match on specific error variants:

```haskell
case err of
  NixTypeMismatch expected actual -> ...
  NixMissingAttr name -> ...
  NixCError kind msg info -> ...
```

## Safe accessors

Value extraction functions check the type before accessing:

```haskell
val <- eval state "42"
getInt state val     -- OK: returns 42
getString state val  -- throws: NixTypeMismatch TypeInt TypeString
```

Unchecked variants (`unsafeGetInt`, `unsafeGetFloat`, etc.) are available via `import Nix.C.Unsafe.Value` for performance-sensitive code.

## Modules

| Module | Purpose |
|---|---|
| `Nix.C` | Nix monad API (recommended) |
| `Nix.C.Unsafe` | Throwing IO API (re-exports `Nix.C.Unsafe.*`) |
| `Nix.C.Unsafe.Eval` | Convenience eval + extract (throwing) |
| `Nix.C.Unsafe.Expr` | Expression evaluation (throwing) |
| `Nix.C.Unsafe.Init` | Library initialization (throwing) |
| `Nix.C.Unsafe.Store` | Store operations (throwing) |
| `Nix.C.Unsafe.Value` | Value extraction, `FromValue` (throwing + `Either`) |
| `Nix.C.Monad` | `Nix` type, `runNix`, `runNixThrow`, `liftNix` |
| `Nix.C.Context` | `NixError`, `NixErrorKind` |
| `Nix.C.Sys` | Raw FFI re-exports from `nix-bindings-sys` |
