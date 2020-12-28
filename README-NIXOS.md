# Openpilot NixOS Experiment (WIP, not working yet)
This branch is an effort to round up all of Openpilot's complex dependency tree.
Check out `shell.nix` for the current state of things. 
## Build system revamp
I am currently in the process of getting a Cmake-based build of this repo working.
Scons has a tight dependency on python which complicates Python-related builds.

## Repo init
Using Openpilot is as simple as `nix-shell` in the repo root.
You may need to execute the following on a freshly-pulled repo to init subrees, etc.
```
git lfs install
git lfs pull
git submodule init
git submodule update
```

## Building native code
In the repo root:
`rm -rf build/ && mkdir build && cd build && cmake ..`

## System Dependencies
Openpilot requires Intel OpenCL. An NVIDIA GPU and NVIDIA CUDA are strongly recommended.
Add the following to your `/etc/nixos/configuration.nix` and rebuild your system to enable support for the above:
 
...


