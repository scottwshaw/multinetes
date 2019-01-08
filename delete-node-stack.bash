#!/bin/bash
set -e
source vars.bash

echo aws cloudformation delete-stack --stack-name $EKS_NODE_STACK_NAME

aws cloudformation delete-stack --stack-name $EKS_NODE_STACK_NAME

