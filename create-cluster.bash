#!/bin/bash
set -e
aws eks create-cluster --name eks-tutorial --role-arn arn:aws:iam::673459219329:role/EKSServiceRole --resources-vpc-config subnetIds=subnet-0767fecd19d7f672b,subnet-0b94160a8550679b0,subnet-0d04cba51bdd62566,securityGroupIds=sg-071605ff206bd322e