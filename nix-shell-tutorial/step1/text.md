The first step is to install Nix Package Manager. By running the following command you install recommended multi-user installation.

```
$ sh <(curl -L https://nixos.org/nix/install) --daemon
```{{exec}}
Once everything is installed, the next step is to add and configure the Nix configuration file.

```
mkdir -p /home/ubuntu/.config/nix
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
nix-env install 'nixpkgs#cowsay'
```{{exec}}

Then we can test the package with this. 
``` cowsay "Have you heard about Spoon?"
```{{exec}} 
