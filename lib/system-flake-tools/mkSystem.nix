{ inputs }:
confFile:
let
  lib = inputs.system-flake-tools.lib;
  tools = lib.system-flake-tools { inherit inputs; };
  outputs = inputs.self.outputs;
in
inputs.nixpkgs.lib.nixosSystem {
  specialArgs = {
    inherit inputs tools outputs;
  };
  system = lib.systems.x86_64-linux;
  modules = [
    confFile
    outputs.nixosModules.default
  ];
}
