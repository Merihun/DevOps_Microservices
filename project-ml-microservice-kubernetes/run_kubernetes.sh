#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=minuet/merihun-flask-app
# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run $dockerpath --image=minuet/merihun-flask-app:v1pro3 --port=80

kubectl run merihun-flask-app \
    --image=$dockerpath \
    --port=80 
    # --labels app=merihun-flask-app

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host

# kubectl port-forward deployment/microservice 8000:80
kubectl port-forward merihun-flask-app 8000:80

# Get logs
# kubectl logs `kubectl get pods -o=name`