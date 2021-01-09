default:
	@ echo "No target specified"

rebuild-full:
	nix-shell --pure --run "rm -rf /home/lukeadams/openpilot/build; mkdir build; cd build; cmake ..; make -j48"

rebuild:
	nix-shell --pure --run "cd build; make -j1"

manager-exec:
	nix-shell --run "PASSIVE=0 NOSENSOR=1 WEBCAM=1 ./selfdrive/manager.py"

camerad-test:
	nix-shell --pure --run "./build/selfdrive/camerad/selfdrive-camerad"
debug-camerad:
	nix-shell --pure --run "lldb ./build/selfdrive/camerad/selfdrive-camerad"

autoignite:
	nix-shell --run "python3 ./tools/autoignite.py"

debug-loggerd:
	nix-shell --pure --run "lldb ./build/selfdrive/loggerd/selfdrive-loggerd"

list-cams:
	nix-shell --pure --run "v4l2-ctl --list-devices"

test-modeld:
	nix-shell --pure --run "./build/selfdrive/modeld/selfdrive-modeld-core"

debug-modeld:
	nix-shell --pure --run "lldb ./build/selfdrive/modeld/selfdrive-modeld-core"
