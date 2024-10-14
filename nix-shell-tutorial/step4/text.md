
By now we know how to set up a simple developer shell. The next step is to customize it so it's relevant to the project you currently working on. You can easily extend the *devShell* by adding additional packages to the *buildInputs* section. If you want to add *python* you can just declare it like this. 
```
buildInputs = [
 pkgs.python39
 pkgs.nodejs_20
];
```

Nix also makes it easy to switch to different versions of packages. For example, if you need to switch from Python 3.9 to Python 3.10 or use a different version of Node.js, you can simply change the version in the configuration. 

```
buildInputs = [
 pkgs.python310
 pkgs.nodejs_19
];
```

Try to use these packages for example by using `python --version`{{exec}} or `node --version`{{exec}}