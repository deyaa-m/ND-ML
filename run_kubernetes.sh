#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=135834287615.dkr.ecr.eu-west-2.amazonaws.com

# Step 2
# Run the Docker Hub container with kubernetes
minikube start
#eval $(minikube docker-env)
docker pull ${dockerpath}/flask:latest
kubectl apply -f flask-k8s.yml

# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
kubectl port-forward service/flask-service 8000:8000

