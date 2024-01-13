{
  description = "flake building esse";

  inputs = {
    my-nixos.url = "github:ahbk/my-nixos";
    nixpkgs.follows = "my-nixos/nixpkgs";
    nixpkgs-stable.follows = "my-nixos/nixpkgs-stable";
  };

  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
  in {
    nixosModules.default = import ./wordpress.nix;
  };
}
