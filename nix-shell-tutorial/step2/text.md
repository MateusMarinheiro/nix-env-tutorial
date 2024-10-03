<!--
    1. create folder for nix flake
    2. create nix flake
-->

To start using *flakes* we should create a folder where we store our files. This usually is the main directory of our project but for the purpose of this tutorial we will create an empty directory.

```
mkdir my-flake
cd my-flake
```
<!-- add {{exec}} -->

Once inside the folder we can run the following command `nix flake init`. This will create a basic *flake.nix* file. Try to open it with your preferred text editor.

You can see the that the flake consists of 3 sections. The **description**, the **inputs** and the **outputs**. Let's go over them one by one.

<details>
<summary>Description</summary>
The **description** section is self explanatory. Here you can give a brief commentary on your flake. Customise it to your liking if you want it shouldn't affect the rest of the tutorial.
</details>

<details>
<summary>Inputs</summary>
The **inputs** section is a bit more complex but not to worry. In this section you can specify dependencies that your flake needs in order to be built. These dependencies can come from multiple sources such as:
  - Github
  - Generic git repositories
  - Your file system

One of the most common dependencies in a nix flake is the default one, the nixpkgs. This includes all the packages in the package repository of NixOS (+100 000 packages).
</details>

<details>
<summary>Outputs</summary>
Finally the **outputs** section is the one we are more concerned with. This allows us to state what the flake while produce once it is built. We can have multiple **outputs** at the same time such as:
  - Nix packages
  - Nix development environments (this is what we are interested in)
  - NixOS configurations
  - Nix templates

The **outputs** are defined as a function that takes each input from the inputs sections as the arguments.
</details>
