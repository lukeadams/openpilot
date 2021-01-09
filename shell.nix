{ pkgs ? import /home/lukeadams/nixpkgs {} }:

  (pkgs.mkShell.override { stdenv = pkgs.clangStdenv; }) {
    shellHook = ''
        export PS1="$PS1 (openpilot-env) "
        export PYTHONPATH="$PYTHONPATH:/home/lukeadams/openpilot:/home/lukeadams/openpilot/build"
    '';
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = (with pkgs; [
        graphviz
        
        cmake
        pkgconfig

        git-lfs
        autoconf 
        # build-essential 
        # bzip2 
        capnproto 
        cppcheck 
        # clang 
        cmake 
        curl 
        ffmpeg 
        git 
        cacert
        libav
        libarchive
        bzip2
        curlFull
        eigen
        libffi
        glew
        ninja # not used ... yet
        # libgles2-mesa-dev 
        libglvnd
        glfw3
        glib
        # lzma 
        libmysqlclient
        llvmPackages.openmp
        opencv4
        libpng
        libjpeg
        # libssl-dev 
        # libstdc++-arm-none-eabi-newlib 
        sqlite
        libtool 
        libusb
        zeromq
        # gcc-unwrapped
        gcc-unwrapped.lib # libatomic1.so
        # libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev 
        # libsdl1.2-dev  libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev libfreetype6-dev 
        # libsystemd-dev 
        # locales 
        # ocl-icd-libopencl1 
        # ocl-icd-opencl-dev 
        # opencl-headers 
        # python-dev 
        # python3-pip 
        # qt5-default 
        qt512.full
        # qtmultimedia5-dev 
        # screen 
        # sudo 
        # vim 
        # wget 
        # gcc-arm-none-eabi
        # gcc
        intel-ocl # intel opencl library
        ocl-icd # opencl so fileexp
        opencl-headers
        openssl
        # autoPatchelfHook
        llvmPackages.libcxxStdenv.cc.cc.lib
        lldb
        # ncurses
        # llvmPackages.libstdcxxClang
        # llvmPackages.libcxx llvmPackages.libcxxabi
        # cudnn_cudatoolkit_10_2
        guvcview
        v4l-utils
    ]) ++ (with pkgs.python38Packages; [
        numpy
        jinja2
        cython
        pyyaml
        sympy
        cffi
        pycapnp
        Logentries
        pyzmq
        pyjwt
        requests
        atomicwrites
        setproctitle
        psutil
        smbus2
        # onnx
        # tensorflow_2
        libusb1
        tqdm
        crcmod
        raven


        # pygame
    ]);

    libs = pkgs.clangStdenv.lib.makeLibraryPath [ pkgs.gcc-unwrapped ];
}
# pipenv lock -r > requirements.txt

