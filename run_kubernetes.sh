#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=135834287615.dkr.ecr.eu-west-2.amazonaws.com

# Step 2
# Run the Docker Hub container with kubernetes
docker stack deploy -n flask-ns --compose-file docker-compose.yml flask-stack

# Step 3:
# List kubernetes pods
kubectl get pods -n flask-ns

# Step 4:
# Forward the container port to a host
#kubectl port-forward service/flask 80:8000

