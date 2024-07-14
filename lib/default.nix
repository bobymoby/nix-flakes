let
  systems = import ./systems.nix;
  system-flake-tools = import ./system-flake-tools;
  mkShell = import ./mkShell.nix;
  lib = {
    inherit systems system-flake-tools mkShell;
  };
in
lib
