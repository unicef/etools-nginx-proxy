#!/bin/sh -e
#cp /nginx.conf /etc/nginx/conf.d/default.conf

if [ "$1" == "nginx" ]; then
    nginx -g 'daemon off;' ${NX_CONFIG}
else
    exec "$@"
fi
