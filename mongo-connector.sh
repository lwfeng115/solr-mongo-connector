#!/bin/bash
mongo-connector --unique-key=id -m ${MONGODB_HOST:-localhost}:${MONGODB_PORT:-27017} -t http://localhost:8983/solr/${SOLR_CORE_NAME:-solrcore} -d solr_doc_manager