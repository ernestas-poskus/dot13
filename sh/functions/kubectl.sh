#!/bin/bash

function kubecurl() {
  kubectl run curl --image=radial/busyboxplus:curl -i --tty
}
