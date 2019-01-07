#!/bin/bash
set -e
source vars.bash
echo aws eks describe-cluster --name $CLUSTER_NAME

aws eks describe-cluster --name $CLUSTER_NAME

