#!/bin/bash

CONFIG_DIR=`pwd`/config
ETHEREUM_DIR=`pwd`/ethereum

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $IP

docker run -d \
  -v $CONFIG_DIR:/root/.config \
  -v $ETHEREUM_DIR:/root/.ethereum \
  -v /etc/localtime:/etc/localtime \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$IP:0 \
  --name ethereum-mist-private \
  --network ethereumdocker_default \
  ethereum-mist \
  --rpc http://bootstrap:8545

# docker logs --follow ethereum-mist-private

