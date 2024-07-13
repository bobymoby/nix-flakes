let
  systems = import ./systems.nix;
  system-flake-tools = import ./system-flake-tools;
  lib = {
    inherit systems system-flake-tools;
  };
in
lib
