#!/bin/sh

function elasticsearch_delete_all_indices() {
  curl -XGET http://localhost:9200/_cat/shards?h=index | awk '{print $1'} | sort | uniq | xargs -I % curl -XDELETE http://localhost:9200/%
}
