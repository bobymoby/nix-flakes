{
  description = "Nix flake utilities and templates";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs: {
    lib = import ./lib { inherit inputs; };
    templates = import ./templates;
  };
}
