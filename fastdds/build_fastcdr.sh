#!/bin/bash

wget https://github.com/eProsima/Fast-CDR/archive/refs/tags/v1.0.21.tar.gz
tar -zxvf ./v1.0.21.tar.gz
cd Fast-CDR-1.0.21
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/workspace/fastdds/install
make -j`nproc` && make install
cd /workspace
