{
    description = "my flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };
    outputs = { self, nixpkgs, ... }:
    {
        nixosConfigurations = {
            sc-testvm = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit self; };
                modules = [ ./hosts/sc-testvm ];
            };
        };
    };
}