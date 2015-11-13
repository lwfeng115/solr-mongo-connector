#!/bin/bash

if [ "x${ZK_HOST}"=="x" ]; then
	bin/solr start -p 8983 -f
else
	bin/solr start -cloud -p 8983 -s "/var/lib/solr" -f -z ${ZK_HOST}:${ZK_PORT:-2181}	
fi
