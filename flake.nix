{
  description = "Haskell bindings to the Nix C API";

  nixConfig = {
    extra-substituters = "https://hs-nix-c-api.cachix.org";
    extra-trusted-public-keys = "hs-nix-c-api.cachix.org-1:jvt7+t6raQmCgk+cQIEp6zgtSR7vScLH/Nk3HRbUZd8=";
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

          hs-nix-c-api-sys =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hpkgs.callCabal2nix "hs-nix-c-api-sys" ./hs-nix-c-api-sys { });

          hs-nix-c-api = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "hs-nix-c-api" ./hs-nix-c-api {
              inherit hs-nix-c-api-sys;
              inherit (hpkgs) hs-bindgen-runtime;
            });

          hs-nix-c-api-sys-regenerated =
            hlib.overrideCabal
              (drv: {
                pkg-configDepends = nixCApiPkgs;
              })
              (hlib.generateBindings
                ./hs-nix-c-api-sys/generate-bindings
                (hpkgs.callCabal2nix "hs-nix-c-api-sys" ./hs-nix-c-api-sys { }));

          hs-nix-c-api-regenerated = hlib.overrideCabal
            (drv: {
              pkg-configDepends = nixCApiPkgs;
            })
            (hpkgs.callCabal2nix "hs-nix-c-api" ./hs-nix-c-api {
              hs-nix-c-api-sys = hs-nix-c-api-sys-regenerated;
              inherit (hpkgs) hs-bindgen-runtime;
            });
        in
        {
          packages = {
            inherit
              hs-nix-c-api
              hs-nix-c-api-sys
              hs-nix-c-api-sys-regenerated
              hs-nix-c-api-regenerated;
            default = hs-nix-c-api;
          };

          devShells.default = hpkgs.shellFor {
            packages = _: [
              hs-nix-c-api
              hs-nix-c-api-sys
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
