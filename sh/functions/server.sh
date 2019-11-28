function serve() {
  if [ -z "$1" ];
  then
    port=8000
  else
    port=$1
  fi

  python -m SimpleHTTPServer "$port"
}

function serve_and_dump() {
  if [ -z "$1" ];
  then
    port=8000
  else
    port=$1
  fi

  nc -k -l -p "$port"
}
