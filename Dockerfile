FROM nginx
RUN apt-get update && \
    apt-get install --assume-yes python-dev python-setuptools python-pip
RUN pip install j2cli
ADD nginx.conf.j2 /
ADD docker-entrypoint.sh /
RUN chmod a+rx /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
