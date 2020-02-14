#!/bin/sh

docker run --rm --network=host -e "ELASTICSEARCH_HOST=elasticsearch-tst.e-unicred.com.br" -e "INDEX_TO_DELETE=filebeat" -e "OLDER_THAN_IN_DAYS=7" jenciso/elasticsearch-curator
