#!/bin/bash
mc cp icsl-nas/artifact/fastdds/foonathan_memory_vendor-v1.1.0.tar.gz ./
tar -zxf ./foonathan_memory_vendor-v1.1.0.tar.gz
pushd foonathan_memory_vendor-1.1.0
mkdir build
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX=/workspace/fastdds/install
make -j`nproc` && make install
popd
popd