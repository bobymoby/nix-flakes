{
  description = "Nix flake utilities and templates";

  outputs = inputs: {
    lib = import ./lib;
    templates = import ./templates;
  };
}
