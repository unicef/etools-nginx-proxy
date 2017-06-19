FROM nginx
RUN apt-get update && \
    apt-get install --assume-yes python-dev python-setuptools
RUN easy_install j2cli
ADD nginx.conf.j2 /
ADD nginx-built.conf /
ADD docker-entrypoint.sh /
RUN chmod a+rx /docker-entrypoint.sh
RUN chmod a+rx /nginx-built.conf
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
