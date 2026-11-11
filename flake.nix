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
      packages.default = pkgs.runCommand "dominion-agents" {} ''
        mkdir -p $out/share/dominion-agents
        cp -r ${./skills} $out/share/dominion-agents/skills
      '';

      devShells.default = pkgs.mkShell {
        packages = with pkgs; [just alejandra];
      };

      formatter = pkgs.alejandra;
    });
}
