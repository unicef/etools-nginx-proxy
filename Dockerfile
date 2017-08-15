FROM nginx
RUN apt-get update && \
    apt-get install --assume-yes python-dev python-setuptools python-pip
ADD nginx-built.conf /
ADD nginx.conf /
ADD .htpasswd /
ADD docker-entrypoint.sh /
RUN chmod a+rx /docker-entrypoint.sh
RUN chmod a+rx /nginx.conf
RUN chmod a+rx /nginx-built.conf
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
