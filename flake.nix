{
  description = "flake building esse";
  outputs = { ... }: {
    nixosModules.default = import ./wordpress.nix;
  };
}
