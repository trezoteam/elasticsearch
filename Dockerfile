FROM java:openjdk-8-jre

RUN apt-get update && apt-get install -y wget
RUN wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.0.deb
RUN dpkg -i elasticsearch-1.5.0.deb
RUN mkdir -p /usr/share/elasticsearch/config && chown elasticsearch:elasticsearch /usr/share/elasticsearch -R

CMD "/usr/share/elasticsearch/bin/elasticsearch"
