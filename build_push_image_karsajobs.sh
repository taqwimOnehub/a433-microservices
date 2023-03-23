#!/bin/bash


# Build Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Using personal access token to GitHub Package container registry
echo "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" | docker login ghcr.io -u taqwimonehub --password-stdin

# Push image ke GitHub Package container registry
docker tag karsajobs ghcr.io/taqwimonehub/karsajobs:latest
docker push ghcr.io/taqwimonehub/karsajobs