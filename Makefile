rebuild:
	nix-shell --pure --run "cd build; make -j1"

manager-exec:
	nix-shell --run "PASSIVE=0 NOSENSOR=1 WEBCAM=1 ./selfdrive/manager.py"