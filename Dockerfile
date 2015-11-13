FROM makuk66/docker-solr:latest
MAINTAINER  Alban Seurat "alban.seurat@me.com"

USER root

run	apt-get -y update
run	apt-get -y install python-pip supervisor
run pip install mongo-connector


RUN mkdir -p /var/lib/solr

add ./solr.xml /var/lib/solr/solr.xml

add ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
add ./solr.conf /etc/supervisor/conf.d/solr.conf
add ./start-solr.sh /opt/solr/bin/start-solr.sh 
add ./mongo-connector.sh /opt/solr/bin/mongo-connector.sh

run chmod a+x /opt/solr/bin/start-solr.sh
run chmod a+x /opt/solr/bin/mongo-connector.sh

CMD "/usr/bin/supervisord"
