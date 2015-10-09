FROM makuk66/docker-solr:latest
MAINTAINER  Alban Seurat "alban.seurat@me.com"

USER root

run	apt-get -y update
run	apt-get -y install python-pip supervisor
run pip install mongo-connector

add	./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
add	./solr.conf /etc/supervisor/conf.d/solr.conf
add ./init-solr.conf /etc/supervisor/conf.d/init-solr.conf
add ./init-solr.sh /opt/solr/bin/init-solr.sh
add ./mongo-connector.sh /opt/solr/bin/mongo-connector.sh

run chmod a+x /opt/solr/bin/mongo-connector.sh

CMD "/usr/bin/supervisord"
