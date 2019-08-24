FROM alpine:latest
# AirConnect-Synology-Docker
LABEL version="1.2.12.0"
LABEL description="AirConnect for Docker on Synology"
LABEL MAINTAINER="https://github.com/mommel"

# Define variables.
ARG PORT=49152
ARG AUARCH=x86-64-static
ARG ACARCH=x86-64
ENV AIRUPNP_ARC=${AUARCH}
ENV AIRCAST_ARC=${ACARCH}
ENV PORT=${PORT}

USER root:root

# Install required tools
RUN apk add --no-cache wget supervisor \
        libc6-compat

# Copy supervisor.conf
COPY supervisord.conf /etc
COPY AirConnect/bin/airupnp-${AUARCH} /bin
COPY AirConnect/bin/aircast-${ACARCH} /bin
RUN chmod +x /bin/airupnp-${AUARCH}
RUN chmod +x /bin/aircast-${ACARCH}

# expose port
EXPOSE ${PORT}

WORKDIR /bin

#CMD "sh"
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
