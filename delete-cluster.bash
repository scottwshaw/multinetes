#!/bin/bash
set -e
source vars.bash
echo aws eks delete-cluster --name $CLUSTER_NAME

aws eks delete-cluster --name $CLUSTER_NAME
