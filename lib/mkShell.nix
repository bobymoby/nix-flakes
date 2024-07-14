{ buildInputsFunc, shellHookFunc }:
{
  self,
  nixpkgs,
  flake-utils,
  ...
}:
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
