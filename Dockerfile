FROM java:openjdk-8-jre

RUN apt-get update && apt-get install -y wget
RUN wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.0.deb
RUN dpkg -i elasticsearch-1.5.0.deb
RUN usermod -u 2121 elasticsearch && groupmod -g 2121 elasticsearch
RUN mkdir -p /usr/share/elasticsearch/config && chown elasticsearch:elasticsearch /usr/share/elasticsearch -R
USER elasticsearch
CMD "/usr/share/elasticsearch/bin/elasticsearch"
