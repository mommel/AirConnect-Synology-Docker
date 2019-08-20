# AirConnect-Synology-Docker-static
LABEL version="1.2.12.0-static"
LABEL description="AirConnect for Docker on Synology"
LABEL MAINTAINER="https://github.com/mommel"
FROM alpine:latest
RUN apk add --no-cache wget supervisor
COPY supervisord.conf /etc
RUN wget --output-document=/bin/airupnp-x86-64-static https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/airupnp-x86-64-static && chmod +x /bin/airupnp-x86-64-static
RUN wget --output-document=/bin/aircast-x86-64-static https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/aircast-x86-64-static && chmod +x /bin/aircast-x86-64-static
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
