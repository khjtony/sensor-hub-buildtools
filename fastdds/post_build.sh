#!/bin/bash
FASTDDS_VERSION=v2.3.3
cd /workspace/fastdds/
mv -f install fastdds-$FASTDDS_VERSION
tar -czvf fastdds-$FASTDDS_VERSION.tar.gz ./fastdds-$FASTDDS_VERSION
cd /workspace