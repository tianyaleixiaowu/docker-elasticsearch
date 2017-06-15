FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.1
MAINTAINER Jaeger <JaegerCode@gmail.com>
ADD ik /usr/share/elasticsearch/config/plugins/ik
USER root
RUN chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/plugins/ik
USER elasticsearch
