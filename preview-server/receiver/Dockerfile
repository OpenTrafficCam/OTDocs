FROM alpine:3.21

RUN apk add --no-cache openssh-server rsync \
    && adduser -D -s /bin/sh deployer \
    && mkdir -p /data \
    && chown deployer:deployer /data \
    && ssh-keygen -A

COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint.sh /entrypoint.sh
COPY rsync-handler.sh /usr/local/bin/rsync-handler.sh

RUN chmod +x /entrypoint.sh /usr/local/bin/rsync-handler.sh

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
