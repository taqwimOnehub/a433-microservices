#!/bin/bash


# Build Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Using personal access token to GitHub Package container registry
echo "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" | docker login ghcr.io -u taqwimonehub --password-stdin

# Push image ke GitHub Package container registry
docker tag karsajobs ghcr.io/taqwimonehub/karsajobs:latest
docker push ghcr.io/taqwimonehub/karsajobs