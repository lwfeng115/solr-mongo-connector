#!/bin/bash
sleep 5
if [ -d /data/solr ]; then
    bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore} -d /data/solr
else
    bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore}
fi
