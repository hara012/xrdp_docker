#!/bin/bash

if [ $# = 1 ]; then
  gpu="device="$1
else
  gpu=all
fi

docker run -it --rm --gpus $gpu -p 6080:3389 -v $PWD:/share --shm-size=512m -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) --name xrdp_test xrdp_test
