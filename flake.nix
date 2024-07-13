{
  description = "Nix flake utilities";

  outputs = inputs: {
    lib = import ./lib.nix;
    templates = import ./templates.nix;
  };
}
