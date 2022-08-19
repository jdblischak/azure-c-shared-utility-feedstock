#!/usr/bin/env bash
set -e

mkdir -p bld
cd bld

cmake \
    -D CMAKE_INSTALL_PREFIX=${PREFIX} \
    -D CMAKE_BUILD_TYPE=Release \
    -D BUILD_SHARED_LIBS=ON \
    -D CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=True \
    -D use_installed_dependencies=ON \
    ${SRC_DIR}

cmake --build . --config Release --target install
