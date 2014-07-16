#!/bin/bash

if [ "$(whoami)" == 'ernestasposkus' ]; then
  echo 'export DOT_ENV="work"' >> ~/.dot13
else
  echo 'export DOT_ENV="home"' >> ~/.dot13
fi
