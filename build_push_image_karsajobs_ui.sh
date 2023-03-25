#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs-ui:latest .

# Using personal access token to GitHub Package container registry
echo "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" | docker login ghcr.io -u taqwimonehub --password-stdin

# Push image ke GitHub Package container registry
docker tag karsajobs-ui ghcr.io/taqwimonehub/karsajobs-ui:latest
docker push ghcr.io/taqwimonehub/karsajobs-ui