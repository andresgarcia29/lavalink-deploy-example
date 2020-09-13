#!/bin/sh

echo "Deploying Lavalink To Kubernetes"
echo "***"
echo "Building Docker Image"
docker build -t lavalink .
echo "Tagging Docker Image"
docker tag lavalink andresgarcia29/lavalink
echo "Pushing Docker Image"
docker push andresgarcia29/lavalink
echo "Running Kubernetes Deployment"
kubectl apply -f deploy.yml


