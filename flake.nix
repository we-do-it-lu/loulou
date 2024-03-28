{
  description = "My first flake for loulou!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    # or any branch you want:
    # nixpkgs.url = "nixpkgs/{BRANCH-NAME}";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        loulou = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
      };
    };
  };
}
