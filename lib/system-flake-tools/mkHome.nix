{ inputs }:

confFile:
let
  lib = inputs.bobymoby-nix-flakes.lib;
  tools = lib.system-flake-tools { inherit inputs; };
  outputs = inputs.self.outputs;
in
inputs.home-manager.lib.homeManagerConfiguration {
  pkgs = import inputs.nixpkgs {
    system = lib.systems.x86_64-linux;
    config = {
      allowUnfree = true;
    };
  };
  extraSpecialArgs = {
    inherit inputs tools outputs;
  };
  modules = [
    confFile
    outputs.homeModules.default
  ];
}
