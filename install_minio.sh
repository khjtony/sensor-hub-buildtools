#!/bin/bash

# install mc client
wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /usr/bin/mc
chmod +x /usr/bin/mc

# add configuration
mkdir ~/.mc
echo '{"version":"10","aliases":{"icsl-nas":{"url":"https:\/\/icsl-nas.ee.columbia.edu:9001","accessKey":"icsl","secretKey":"Icslicsl","api":"s3v4","path":"auto"}}}' > ~/.mc/config.json
