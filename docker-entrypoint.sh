#!/bin/bash -e
cp /nginx.conf /etc/nginx/conf.d/default.conf
cp /.htpasswd /etc/nginx/.htpasswd
exec "$@"
