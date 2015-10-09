#!/bin/bash
sleep 5 && bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore}
mongo-connector --unique-key=id -m ${MONGODB_HOST:-localhost}:${MONGODB_PORT:-27017} -t http://localhost:8983/solr/${SOLR_CORE_NAME:-solrcore} -d solr_doc_manager