The first step is to install Nix Package Manager. By running the following command you install recommended multi-user installation.

```
sh <(curl -L https://nixos.org/nix/install) --daemon
```{{exec}}


Once everything is installed, the next step is to restart the shell so that the Nix Environment is properly loaded. To do so we need to push `Ctrl + D` and then enter. 

Now that Nix is installed, we want to create and configure the Nix configuration file. We start by creating a directory with the following command:
```
mkdir -p ~/.config/nix
```{{exec}}
To create or edit this file you can use nano or vim.
For nano:
```
nano ~/.config/nix/nix.conf
```{{exec}}
For vim:
```
vim ~/.config/nix/nix.conf
```{{exec}}

In this file we will add the following line. 
```
experimental-features = nix-command flakes
```{{exec}}

With this configuration, we enable two experimental features: **nix-command** and **flakes**. This enables advanced functionalities in Nix, such as using the nix-env command, which allows us to manage user-specific packages.

Let's try this by installing a package called *cowsay* using the following command: 
```
nix-env -iA nixpkgs.cowsay
```{{exec}}

- `-iA`: This option tells Nix to install a package using an attribute from the Nixpkgs repository.
- `nixpkgs.cowsay`: This specifies that we want to install the `cowsay` package from the Nixpkgs repository.

Finally, let's test the installation with this command:
``` 
cowsay "NDggNjEgNzYgNjUgMjAgNzkgNmYgNzUgMjAgNjggNjUgNjEgNzIgNjQgMjAgNjEgNjIgNmYgNzUgNzQgMjAgNTMgNTAgNGYgNGYgNGUgM2Y=
"
```{{exec}} 
