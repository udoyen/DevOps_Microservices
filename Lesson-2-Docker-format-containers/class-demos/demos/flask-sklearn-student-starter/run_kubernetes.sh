#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath="udoyen"

# Step 2
# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo \
    --generator=run-pod/v1 \
    --image=$dockerpath \
    --port=80 --lables app=flaskskearlndemo



# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80


