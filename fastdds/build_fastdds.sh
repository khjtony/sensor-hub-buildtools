#!/bin/bash

mc cp icsl-nas/artifact/fastdds/fastdds-v2.3.3.tar.gz ./
tar -zxf ./fastdds-v2.3.3.tar.gz
pushd Fast-DDS-2.3.3
mkdir build
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX=/workspace/fastdds/install
make -j`nproc` && make install
popd
popd