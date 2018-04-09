#!/bin/bash

function randompassword() {
  date +%s | sha256sum | base64 | head -c 32 | xsel --clipboard
}

function passwordsha256() {
  PASSWORD=$(base64 < /dev/urandom | head -c8); echo "$PASSWORD"; echo -n "$PASSWORD" | sha256sum | tr -d '-'
}
