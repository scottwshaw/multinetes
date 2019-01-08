#!/bin/bash
set -e
source vars.bash
export STACK_PARAMETERS="[\
            {\
              \"ParameterKey\": \"KeyName\",\
	      \"ParameterValue\": \"AWSKey02\"\
            },\
            {\
              \"ParameterKey\": \"NodeImageId\",\
              \"ParameterValue\": \"ami-03297c04f71690a76\"\
            },\
            {\
              \"ParameterKey\": \"NodeInstanceType\",\
              \"ParameterValue\": \"t3.micro\"\
            },\
            {\
              \"ParameterKey\": \"ClusterName\",\
              \"ParameterValue\": \"$CLUSTER_NAME\"\
            },\
            {\
              \"ParameterKey\": \"VpcId\",\
              \"ParameterValue\": \"$VPC_ID\"\
	    },\
            {\
              \"ParameterKey\": \"ClusterControlPlaneSecurityGroup\",\
              \"ParameterValue\": \"$CLUSTER_CONTROL_SECURITY_GROUP_ID\"\
	    },\
            {\
              \"ParameterKey\": \"NodeGroupName\",\
              \"ParameterValue\": \"$NODE_GROUP_NAME\"\
	    },\
            {\
              \"ParameterKey\": \"Subnets\",\
              \"ParameterValue\": \"$SUBNET_IDS\"\
            }\
          ]"

echo aws cloudformation create-stack --stack-name $EKS_NODE_STACK_NAME --template-url https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-12-10/amazon-eks-nodegroup.yaml --parameters "$STACK_PARAMETERS" --capabilities CAPABILITY_IAM

aws cloudformation create-stack --stack-name $EKS_NODE_STACK_NAME --template-url https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-12-10/amazon-eks-nodegroup.yaml --parameters "$STACK_PARAMETERS" --capabilities CAPABILITY_IAM
