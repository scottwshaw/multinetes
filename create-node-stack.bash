#!/bin/bash
set -e
source vars.bash
export PARAMETERS="[\
            {\
              "ParameterKey": "KeyName",\
              "ParameterValue": "AWSKey02",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            },\
            {\
              "ParameterKey": "NodeImageId",\
              "ParameterValue": "ami-03297c04f71690a76",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            },\
            {\
              "ParameterKey": "NodeInstanceType",\
              "ParameterValue": "t3.micro",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            },\
            {\
              "ParameterKey": "ClusterName",\
              "ParameterValue": "$CLUSTER_NAME",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            },\
            {\
              "ParameterKey": "VpcId",\       
              "ParameterValue": "$VPC_ID",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            },\
            {\
              "ParameterKey": "Subnets",\       
              "ParameterValue": "$SUBNET_IDS",\
              "UsePreviousValue": true|false,\
              "ResolvedValue": "string"\
            }\
          ]"
aws cloudformation create-stack --template-url https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2018-12-10/amazon-eks-nodegroup.yaml 
