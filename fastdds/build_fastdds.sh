#!/bin/bash

mc cp icsl-nas/artifact/fastdds/fastdds-v2.3.3.tar.gz ./
tar -zvf ./fastdds-v2.3.3.tar.gz
cd Fast-DDS-2.3.3
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/workspace/fastdds/install
make -j`nproc` && make install
cd /workspace