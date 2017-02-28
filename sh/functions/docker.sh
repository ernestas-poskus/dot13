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
