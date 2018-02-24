#!/bin/bash

CONFIG_DIR=`pwd`/config
CONTRACTS_DIR=`pwd`/contracts
ETHEREUM_DIR=`pwd`/ethereum

if [ "$(uname)" == "Darwin" ]; then
    IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
    xhost + $IP
fi

docker run -d \
  -v $CONFIG_DIR:/root/.config \
  -v $CONTRACTS_DIR:/root/contracts \
  -v $ETHEREUM_DIR:/root/.ethereum \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$IP:0 \
  --name ethereum-mist-public \
  ethereum-mist

# docker logs --follow ethereum-mist-public

