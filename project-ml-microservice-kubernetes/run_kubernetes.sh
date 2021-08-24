#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=diptinwm/devopsproject4

# Step 2
# Run the Docker Hub container with kubernetes
#docker pull diptinwm/devopsproject4:latest
minikube kubectl -- run latest --image-pull-policy=IfNotPresent --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward latest 8000:80