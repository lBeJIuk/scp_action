#!/bin/sh

echo "$INPUT_PUBLIC_KEY" > key
chmod 700 key
scp -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -r \
    -i key \
    -P $INPUT_SSH_PORT \
    $INPUT_SOURCE $INPUT_SSH_USERNAME@$INPUT_SSH_HOST:$INPUT_TARGET

if [ -z "$INPUT_KEEP_KEY" ]
then
shred key -n 10  -v -z -u
fi
