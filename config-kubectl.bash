#!/bin/bash
set -e
source vars.bash
aws eks update-kubeconfig --name $CLUSTER_NAME