{
    description = "my flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };
    outputs = { self, nixpkgs, ... }:
    {
        nixosConfigurations = {
            sc-testvm = import ./hosts/sc-testvm;
        };
    };
}