#!/bin/bash -e
j2 /nginx.conf.j2 > /etc/nginx/conf.d/default.conf
exec "$@"
