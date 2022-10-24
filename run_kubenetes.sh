#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=6666688889/pythonapp-hello

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment.yaml

# Step 3:
# List kubernetes pods
kubectl get pods