#!/bin/bash
FASTDDS_VERSION=v2.3.3
ARCH=`uname -m`
if [ "$ARCH" != "x86_64" ]; then
    ARCH=aarch64
fi
mv -f install fastdds-$FASTDDS_VERSION-$ARCH
tar -czvf fastdds-$FASTDDS_VERSION-$ARCH.tar.gz ./fastdds-$FASTDDS_VERSION-$ARCH
if [ "$PUSH_BINARY" = "yes" ]; then
    mc cp ./fastdds-$FASTDDS_VERSION-$ARCH.tar.gz icsl-nas/artifact/fastdds/binary
fi