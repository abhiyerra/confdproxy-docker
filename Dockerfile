FROM ubuntu:14.04
MAINTAINER Abhi Yerra <abhi@berkeley.edu>

RUN apt-get update
RUN apt-get install -y curl nginx unzip wget

ADD ./conf.d/ /etc/confd/conf.d/
ADD ./templates/ /etc/confd/templates/

ADD confd /opt/

WORKDIR /opt

EXPOSE 8080

# ENTRYPOINT ls /opt
