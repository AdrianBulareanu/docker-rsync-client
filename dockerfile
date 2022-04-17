FROM alpine:3.15

LABEL org.opencontainers.image.source="https://github.com/AdrianBulareanu/docker-rsync-client"


# Install rsync and SSH.
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client-default \
            ca-certificates \
            sshpass \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*
