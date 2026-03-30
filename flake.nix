{
  description = "Haskell bindings to the Nix C API";

  nixConfig = {
    extra-substituters = "https://nix-bindings-haskell.cachix.org";
    extra-trusted-public-keys = "nix-bindings-haskell.cachix.org-1:REDOE29ek9QD6uzyIau6MxHvoHbY8dmswgZd/sivwN4=";
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

          nix-bindings-sys =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hpkgs.callCabal2nix "nix-bindings-sys" ./nix-bindings-sys { });

          nix-bindings = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "nix-bindings" ./nix-bindings {
              inherit nix-bindings-sys;
              inherit (hpkgs) hs-bindgen-runtime;
            });

          nix-bindings-sys-regenerated =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hlib.generateBindings
                ./nix-bindings-sys/generate-bindings
                (hpkgs.callCabal2nix "nix-bindings-sys" ./nix-bindings-sys { }));

          nix-bindings-regenerated = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "nix-bindings" ./nix-bindings {
              nix-bindings-sys = nix-bindings-sys-regenerated;
              inherit (hpkgs) hs-bindgen-runtime;
            });
        in
        {
          packages = {
            inherit
              nix-bindings
              nix-bindings-sys
              nix-bindings-sys-regenerated
              nix-bindings-regenerated;
            nix-bindings-sdist = hlib.sdistTarball nix-bindings;
            nix-bindings-sys-sdist = hlib.sdistTarball nix-bindings-sys;
            default = nix-bindings;
          };

          devShells.default = hpkgs.shellFor {
            packages = _: [
              nix-bindings
              nix-bindings-sys
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
