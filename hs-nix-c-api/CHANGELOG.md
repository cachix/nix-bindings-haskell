# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

## [0.1.0.0]

Safe, idiomatic Haskell bindings to the Nix C API with automatic resource
management and structured error handling.

- Evaluate Nix expressions from strings.
- Extract Nix values to Haskell types (integers, floats, booleans, strings, paths, lists, attribute sets).
- Construct Nix values programmatically.
- Access attributes by name or nested attribute path.
- Call Nix functions with single or multiple arguments.
- Open and query Nix stores (URI, directory, version).
- Parse and validate store paths, compute closures, realize/build paths.
- Copy paths and closures between stores.
- Query store path metadata (hashes, signatures, content addresses).
- Parse flake references, lock flakes, and access flake outputs.
- Manage garbage collection and Nix settings.
- Three API styles: `Nix` monad, throwing IO (`Nix.C.Unsafe`), and `Either`-based (`runNix`).
