{
  description = "Agent context and skills for the Dominion deck-building game";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.default = pkgs.runCommand "dominion-playbook" {} ''
        mkdir -p $out/share/dominion-playbook
        cp -r ${./context} $out/share/dominion-playbook/context
        cp -r ${./skills} $out/share/dominion-playbook/skills
        cp -r ${./protocol} $out/share/dominion-playbook/protocol
      '';

      devShells.default = pkgs.mkShell {
        packages = with pkgs; [just alejandra check-jsonschema python3];
      };

      formatter = pkgs.alejandra;
    });
}
