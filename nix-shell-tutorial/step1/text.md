The first step is to install Nix Package Manager. By running the following command you install the recommended multi-user installation.

```
sh <(curl -L https://nixos.org/nix/install) --daemon
```{{exec}}


- **`sh`**: The Unix shell that runs commands. In this case, it is used to execute a script.
- **`<(...)`**: Runs the command inside the parentheses and treats its output as a file. In this case, it runs the script downloaded by curl.
- **`curl -L https://nixos.org/nix/install`**: Downloads the Nix installation script from the official NixOS website. The `-L` option ensures that `curl` follows any redirects to the final URL.
- **`--daemon`**: Installs Nix in multi-user mode, allowing multiple users on the system to share installed packages while maintaining their own profiles.


Once everything is installed, the next step is to restart the shell so that the Nix Environment is properly loaded. To do so we need to push `Ctrl + D` and then enter. 

Now that the Nix Environment is loaded, we want to create and configure the Nix configuration file. We start by creating a directory with the following command:
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

A brief explanation about this command. 
- **`nix-env`**: The Nix command-line tool for managing user-specific packages.
- **`-iA`**: This option tells Nix to install a package using an attribute from the Nixpkgs repository.
- **`nixpkgs.cowsay`**: This specifies that we want to install the `cowsay` package from the Nixpkgs repository.

Finally, let's test the installation with this command:
``` 
cowsay "NDggNjEgNzYgNjUgMjAgNzkgNmYgNzUgMjAgNjggNjUgNjEgNzIgNjQgMjAgNjEgNjIgNmYgNzUgNzQgMjAgNTMgNTAgNGYgNGYgNGUgM2Y=
"
```{{exec}} 
