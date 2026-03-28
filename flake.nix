{
  description = "Haskell bindings to the Nix C API";

  nixConfig = {
    extra-substituters = "https://hs-nix-bindings.cachix.org";
    extra-trusted-public-keys = "hs-nix-bindings.cachix.org-1:n5XrQOd8tq0O9MQLi4GBckH48SoFrgoIKEtQN0IxjYU=";
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hs-bindgen = {
      url = "github:well-typed/hs-bindgen";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix.url = "github:cachix/nix/feat-query-path-info-json";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      perSystem =
        { system, ... }:
        let
          pkgs = import inputs.nixpkgs {
            inherit system;
            overlays = [ inputs.hs-bindgen.overlays.default ];
          };
          hpkgs = pkgs.haskellPackages;
          hlib = pkgs.haskell.lib.compose;

          nixCApiPkgs = with inputs.nix.packages.${system}; [
            nix-util-c
            nix-store-c
            nix-expr-c
            nix-fetchers-c
            nix-flake-c
            nix-main-c
          ];

          hs-nix-bindings-sys =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hpkgs.callCabal2nix "hs-nix-bindings-sys" ./hs-nix-bindings-sys { });

          hs-nix-bindings = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "hs-nix-bindings" ./hs-nix-bindings {
              inherit hs-nix-bindings-sys;
              inherit (hpkgs) hs-bindgen-runtime;
            });

          hs-nix-bindings-sys-regenerated =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hlib.generateBindings
                ./hs-nix-bindings-sys/generate-bindings
                (hpkgs.callCabal2nix "hs-nix-bindings-sys" ./hs-nix-bindings-sys { }));

          hs-nix-bindings-regenerated = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "hs-nix-bindings" ./hs-nix-bindings {
              hs-nix-bindings-sys = hs-nix-bindings-sys-regenerated;
              inherit (hpkgs) hs-bindgen-runtime;
            });
        in
        {
          packages = {
            inherit
              hs-nix-bindings
              hs-nix-bindings-sys
              hs-nix-bindings-sys-regenerated
              hs-nix-bindings-regenerated;
            default = hs-nix-bindings;
          };

          devShells.default = hpkgs.shellFor {
            packages = _: [
              hs-nix-bindings
              hs-nix-bindings-sys
            ];
            nativeBuildInputs = [
              hpkgs.cabal-install
              hpkgs.ghc
              hpkgs.haskell-language-server

              pkgs.hs-bindgen-cli
              pkgs.hsBindgenHook

              pkgs.pkg-config
            ]
            ++ nixCApiPkgs;
          };
        };
    };
}
