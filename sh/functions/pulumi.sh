#!/bin/bash

function pulumi_upgrade() {
  version=${1:-$(curl -s https://www.pulumi.com/latest-version)}
  name="pulumi-v$version-linux-x64.tar.gz"
  wget "https://get.pulumi.com/releases/sdk/$name"

  tar xvf $name -C /tmp/
  rm -f $name
  mv /tmp/pulumi/* .
}
