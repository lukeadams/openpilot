{ pkgs ? import <nixpkgs> {} }:
  (pkgs.mkShell.override { stdenv = pkgs.clangStdenv; }) {
    shellHook = ''
        export PS1="$PS1 (openpilot-env) "
    '';
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = (with pkgs; [
        graphviz
        
        cmake
        pkgconfig

        git-lfs
        autoconf 
        # build-essential 
        bzip2 
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
        # libgles2-mesa-dev 
        glfw3
        glib
        lzma 
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
        gcc
        intel-ocl # intel opencl library
        ocl-icd # opencl so fileexp
        opencl-headers

        autoPatchelfHook
        llvmPackages.libcxxStdenv.cc.cc.lib
        # ncurses
        # llvmPackages.libstdcxxClang
        # llvmPackages.libcxx llvmPackages.libcxxabi
    ]) ++ (with pkgs.python38Packages; [
        numpy
        jinja2
        cython
        pyyaml
        sympy
        cffi
    ]);

    libs = pkgs.clangStdenv.lib.makeLibraryPath [ pkgs.gcc-unwrapped ];
}
# pipenv lock -r > requirements.txt

