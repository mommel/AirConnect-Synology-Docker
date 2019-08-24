#!/bin/sh
echo "Buildprocess started"
VERSION=v1.0.0.0
docker stop airconnectbuild 
docker rm airconnectbuild
docker build -f builder.Dockerfile -t=acsdbuilder:${VERSION} -t=acsdbuilder:latest .
docker run -it --log-driver json-file \
  -v $PWD/AirConnect/aircast:/home/AirConnect/aircast \
  -v $PWD/AirConnect/airupnp:/home/AirConnect/airupnp \
  -v $PWD/AirConnect/common:/home/AirConnect/common \
  -v $PWD/AirConnect/tools:/home/AirConnect/tools \
  -v $PWD/bin:/home/AirConnect/bin \
  --name airconnectbuild \
  acsdbuilder:${VERSION}
