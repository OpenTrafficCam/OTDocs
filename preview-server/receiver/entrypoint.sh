#!/bin/sh
set -e

mkdir -p /home/deployer/.ssh
echo "restrict,command=\"/usr/local/bin/rsync-handler.sh\" ${AUTHORIZED_KEY}" \
    > /home/deployer/.ssh/authorized_keys
chmod 700 /home/deployer/.ssh
chmod 600 /home/deployer/.ssh/authorized_keys
chown -R deployer:deployer /home/deployer/.ssh

exec /usr/sbin/sshd -D -e
