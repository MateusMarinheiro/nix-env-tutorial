Our goal is to create a developer shell that will allows us to have multiple environments depending on the project we are working at the moment.

In order to do this, first start by removing everything inside the **outputs** section. Then, add the following lines to it.

```
outputs = {self, nixpkgs} :
let pkgs = nixpkgs.legacyPackages.x86_64-linux;
in
{

};
```

This is a way to create the variable *pkgs* so that we don't need to repeat the *nixpkgs.legacyPackages.x86_64-linux* string everytime.

Inside the `in {...};` section is where we will define what the flake will return. In our case we want to create a simple *devShell* so let's do that by adding the following lines.

```
devShell.x86_64-linux = pkgs.mkShell {
  buildInputs = [
  ];
};
```

This will create a shell for a Linux x86_64. You can add packages by declaring them like `pkgs.<package_name>`. For example let's add *ponysay* and *nodejs* as an example.

```
buildInputs = [
  pkgs.ponysay
  pkgs.nodejs_22
];
```

Try to use this packages for example by using `ponysay "Hello"`{{exec}} or `node --version`{{exec}}
