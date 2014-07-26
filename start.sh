#!/bin/bash

if ! [ -z "$REDIS_PASSWORD" ]; then
  echo "requirepass $REDIS_PASSWORD" >> /etc/redis.conf
fi

/usr/local/bin/redis-server /etc/redis.conf
if [ $? -ne 0 ]; then
  echo App Quit
  exit 1
fi

exit 0
