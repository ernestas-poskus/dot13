function docker_zookeeper() {
  docker run --name zookeeper -d -p 2181:2181 digitalwonderland/zookeeper
}

function docker_cassandra() {
  docker run --name cassandra -d -p 9042:9042 cassandra:3.4
}

function docker_postgres() {
  docker run --name postgres -e POSTGRES_PASSWORD="$POSTGRES_PASS" -e POSTGRES_HOST="$POSTGRES_HOST" -e POSTGRES_USER="$POSTGRES_USER" -e POSTGRES_DBNAME="$POSTGRES_DBNAME" -p 5432:5432  -d postgres
}

function docker_prometheus() {
  docker run --name prometheus -d -p 9090:9090 prom/prometheus
}

function docker_prometheus_pushgateway() {
  docker run --name pushgateway -d -p 9091:9091 prom/pushgateway
}

function docker_full_cleanup() {
  docker stop $(docker ps -a -q) &> /dev/null
  docker rm $(docker ps -a -q) &> /dev/null
  docker rmi $(docker images -a -q) &> /dev/null
  docker images -a
}

function docker_scylla() {
  docker run --name scylla -d -p 9042:9042 -p 9160:9160 -d scylladb/scylla
}

function docker_squid() {
  mkdir /tmp/squid3 &> /dev/null
  docker run --name squid -d -p 3128:3128 --volume /srv/docker/squid/cache:/tmp/squid3 sameersbn/squid
}

function docker_elasticsearch() {
  docker run --name elasticsearch -d -p 9200:9200 -e "http.host=0.0.0.0" -e "xpack.security.enabled=false" -e "transport.host=127.0.0.1" docker.elastic.co/elasticsearch/elasticsearch:5.3.0
}

function docker_kibana() {
  docker run --name kibana -d -p 5601:5601 -e "SERVER_HOST=0.0.0.0" -e "ELASTICSEARCH_URL=http://172.17.0.1:9200" -e "XPACK_SECURITY_ENABLED=false" docker.elastic.co/kibana/kibana:5.3.0
}

function docker_here() {
  docker run --rm -it -v $(pwd):/source $*
}

function docker_mail() {
  docker run --name mail -d -p 1080:1080 -p 1025:1025 schickling/mailcatcher
}

function docker_dgraph() {
  mkdir -p ~/dgraph
  docker run -it -p 8080:8080 -p 9080:9080 -v ~/dgraph:/dgraph -d --name dgraph dgraph/dgraph dgraph --bindall=true --memory_mb 2048
}
