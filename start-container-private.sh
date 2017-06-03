#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
    xhost + $IP
fi

docker start ethereum-mist-private

# docker logs --follow ethereum-mist-private

