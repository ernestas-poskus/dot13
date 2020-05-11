#!/bin/bash

function simple_server() {
  if [ -z "$1" ];
  then
    port=8000
  else
    port=$1
  fi

  python -m http.server "$port"
}
