#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs-ui:latest .

# Using personal access token to GitHub Package container registry
echo "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" | docker login ghcr.io -u taqwimonehub --password-stdin

# Push image ke GitHub Package container registry
docker tag karsajobs-ui ghcr.io/taqwimonehub/karsajobs-ui:latest
docker push ghcr.io/taqwimonehub/karsajobs-ui