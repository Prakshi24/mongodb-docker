
# Dockerfile to build MongoDB container images
# Based on Ubuntu

FROM ubuntu
MAINTAINER Prakshi
RUN apt-get update
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 \
&& echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list \
&& apt-get update \
&& apt-get install -y mongodb-10gen \
&& mkdir -p /data/db
############### INSTALLATION END #################
EXPOSE 27017
CMD ["--port 27017"]
ENTRYPOINT usr/bin/mongod