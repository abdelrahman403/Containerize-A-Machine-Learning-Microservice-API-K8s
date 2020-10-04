#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=abdelrahman16/udacityapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityapp --image=abdelrahman16/udacityapp --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityapp 8000:80
