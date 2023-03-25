#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs-ui:latest .

# Using personal access token to GitHub Package container registry
echo $PASSWORD_GITHUB | docker login ghcr.io -u taqwimonehub --password-stdin

# set tag images to latest
docker tag karsajobs-ui ghcr.io/taqwimonehub/karsajobs-ui:latest

# Push image ke GitHub Package container registry
docker push ghcr.io/taqwimonehub/karsajobs-ui