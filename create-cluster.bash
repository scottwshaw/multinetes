#!/bin/bash
set -e
source vars.bash
echo aws eks create-cluster --name $CLUSTER_NAME --role-arn $ROLE_ARN --resources-vpc-config subnetIds=$SUBNET_IDS,securityGroupIds=$SECURITY_GROUP_ID

aws eks create-cluster --name $CLUSTER_NAME --role-arn $ROLE_ARN --resources-vpc-config subnetIds=$SUBNET_IDS,securityGroupIds=$SECURITY_GROUP_ID