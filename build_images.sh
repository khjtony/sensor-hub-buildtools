#!/bin/bash

image_name="khjtony/sensor-hub-buildtools:x86_64"
docker build -t $image_name -f ./Dockerfile.builder_x86-64 .
docker push $image_name