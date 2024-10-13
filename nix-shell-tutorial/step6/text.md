In this step, we are adapting the Nix flake and defining packages for multiple systems. This is useful when you need to support different operating systems or architectures, while maintaining the same development environment. 

To do this we need to modify the **flake.nix** file. We need to declare the systems we're going to use. This is done by adding the supported systems in a list. We're creating a list called supported systems under the outputs. For this example, let say that we will support both x86_64 and ARM architectures for Linux and macOS. The next step is to map each system to a Nixpkgs package set. This is done using the function *genAttrs*. Finally we need to define which packages we want to install. 

```
{
  outputs = { self, nixpkgs }:
    let 
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in {
          package_1 = pkgs.ponysay;
          package_2 = pkgs.nodejs_20;
        });
    };
}

```