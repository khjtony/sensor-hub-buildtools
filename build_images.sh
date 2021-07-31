#!/bin/bash

image_name="khjtony/sensor-hub-buildtools:latest"
docker build -t $image_name -f ./Dockerfile .
docker push $image_name