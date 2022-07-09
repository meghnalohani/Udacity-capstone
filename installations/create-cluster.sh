#!/usr/bin/env bash

CLUSTER="meghnawebsite2"
REGION="us-east-1"
CLUSTER_NAME="meghnawebsite2"

if kubectl config get-clusters | grep -q ${CLUSTER_NAME}; then
    echo
    echo "Cluster '${CLUSTER_NAME}' already exists!"
    echo
else
    echo
    echo "Creating cluster..."
    eksctl create cluster --name meghnawebsite2 --version 1.21 --nodegroup-name web-nodes --node-type t2.medium --nodes 3 --nodes-min 1 --nodes-max 4 --region us-east-1
fi