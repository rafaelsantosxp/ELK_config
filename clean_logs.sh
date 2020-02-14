#!/bin/sh

docker run --rm --network=host -e "ELASTICSEARCH_HOST=host.test.com.uk" -e "INDEX_TO_DELETE=filebeat" -e "OLDER_THAN_IN_DAYS=7" jenciso/elasticsearch-curator
