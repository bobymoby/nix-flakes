devInputs@{ ... }:
{ buildInputsFunc, shellHookFunc, ... }:
let
  nixpkgs = devInputs.nixpkgs;
  flake-utils = devInputs.flake-utils;
in
flake-utils.lib.eachDefaultSystem (
  system:
  let
    pkgs = nixpkgs.legacyPackages.${system};
    buildInputs = buildInputsFunc pkgs;
    shellHook = shellHookFunc pkgs;
  in
  {
    devShell = pkgs.mkShell {
      nativeBuildInputs = [ pkgs.bashInteractive ];
      inherit buildInputs shellHook;
    };
  }
)
