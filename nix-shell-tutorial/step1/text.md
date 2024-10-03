The first step is to install Nix Package Manager. By running the following command you install recommended multi-user installation.
<!-- SECRET: Have you heard about Spoon? -->

```
sh <(curl -L https://nixos.org/nix/install) --daemon
```{{exec}}
Once everything is installed, the next step is to add and configure the Nix configuration file. Before we do this, we need to restart the shell. To do so we need to push `ctrl + d` and then enter.

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

Now we can install a package with nix-env. To do so we type this: 
```
nix-env -iA nixpkgs.cowsay
```{{exec}}

Then we can test the package with this. 
``` 
cowsay "$SECRET"
```{{exec}} 
