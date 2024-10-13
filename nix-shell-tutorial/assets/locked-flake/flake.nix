{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/release-20.03";
  };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShell.x86_64-linux = pkgs.mkShell {
        buildInputs = [
          pkgs.ponysay
        ];
      };
    };
}
