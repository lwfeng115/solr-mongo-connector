#!/bin/bash
sleep 5
if [ -d /tmp/solr ]; then
    bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore} -t /data/solr
else
    bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore}
fi
