FROM nginx:alpine
ENV NX_CONFIG ""

ADD nginx-built.conf /
ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod a+rx /usr/local/bin/docker-entrypoint.sh \
    && chmod a+r /etc/nginx/conf.d/default.conf


ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 80

CMD ["nginx"]
