#!/bin/bash

if [ $# = 1 ]; then
  gpu="device="$1
else
  gpu=all
fi

docker run -it --rm --gpus $gpu -p 6080:3389 -v $PWD:/root/work --shm-size=512m --name xrdp_test xrdp_test
