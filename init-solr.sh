#!/bin/bash
sleep 5 && bin/solr create_core -c ${SOLR_CORE_NAME:-solrcore}
