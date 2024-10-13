While using the command `nix develop` we saw that there is a file that gets created, `flake.lock`. This file is what makes the nix shell so useful.

Imagine you have a certain project in a team and you manage to get it working on your machine. Now you want to share it with a colleague but want to be sure that all the package versions are the same between you and them. You could just share the `flake.nix` file but imagine if the channel where you get your packages have different versions? This would mean that you and your colleague would have different of packages. This is where the `flake.lock` file comes in.It locks the specific versions (or commits) of the dependencies used by your nix flake meaning that both you and your colleague will be pulling the packages from the same repository version.

If you ever spent time working in a team you know how useful this can be. Ensuring that everyone has the same versions for everything is super important in software development.

Let's try to use this feature now. 
