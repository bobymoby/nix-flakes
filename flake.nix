{
  description = "Nix flake utilities and templates";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  outputs = inputs: {
    lib = import ./lib;
    templates = import ./templates;
  };
}
