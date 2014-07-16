function cf() {
  coffee -cb $1
}

function cfr() {
  ou=${1//%.*/.js}
  coffee -cb $1 && node $ou
}

function ugly() {
  uglifyjs $1 -cmo u_$1 --stats --lint
}

function cfugly() {
  ou=${1//%.*/.js}
  coffee -cb $1 && uglifyjs $ou -cmo $ou --stats --lint
}
