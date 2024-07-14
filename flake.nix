{
  description = "Nix flake utilities and templates";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs: {
    lib = import ./lib;
    templates = import ./templates;
  };
}
