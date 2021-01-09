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
### enable audio
...

## Other Notes
### Network sharing from iPhone over USB
Note: iOS 14 linux kernel bug: see discussion https://lore.kernel.org/linux-usb/CAAn0qaXmysJ9vx3ZEMkViv_B19ju-_ExN8Yn_uSefxpjS6g4Lw@mail.gmail.com/t/ (patched in linux 5.10 release)

<NIXOS setup here> (need to enable various modules see iphone.nix)
Steps:
1. `idevicepair pair`
2. Accept prompt on device

### GPS Sharing from iPhone while tethered
1. Install `GPS2IP` iOS app
2. Configure TCP push to workstation IP
3. (optional) Exec `socat - TCP-LISTEN:11123,crlf` to view raw NMEA packets

### Disable cpu mitigations
`boot.kernelParams = ["migitations=off"];`

### Debugging cameras
`guvcview` is useful for quick camera checks
