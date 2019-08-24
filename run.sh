#!/bin/sh
VERSION=v1.2.12.0
docker build -t=airconnectsynologydocker:${VERSION} \
  -t=airconnectsynologydocker:latest .
docker stop acsyd 
docker rm acsyd
docker logs --follow acsyd
docker run -it --log-driver json-file \
  -p 49152:49152 \
  -v $PWD/config:/home/config \
  --name=acsyd \
  airconnectsynologydocker:${VERSION}
docker exec -it acsyd sh
