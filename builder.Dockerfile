FROM alpine:latest
# AirConnect-Synology-Docker-Build-Container
LABEL version="1.0"
LABEL description="AirConnect for Docker on Synology Compiler Container"
LABEL MAINTAINER="https://github.com/mommel"

RUN mkdir /home/AirConnect

RUN apk add --no-cache gcc musl-dev

WORKDIR /home/AirConnect

CMD ["sh"]
