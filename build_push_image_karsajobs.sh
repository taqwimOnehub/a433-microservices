#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Using personal access token to GitHub Package container registry
echo $PASSWORD_GITHUB | docker login ghcr.io -u taqwimonehub --password-stdin

# set tag images to latest
docker tag karsajobs ghcr.io/taqwimonehub/karsajobs:latest

# Push image ke GitHub Package container registry
docker push ghcr.io/taqwimonehub/karsajobs