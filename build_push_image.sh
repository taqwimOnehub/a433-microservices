#!/bin/bash
# Build Docker image
docker build -t item-app:v1 .

# List local images
docker images

# Rename image to match Docker Hub format
docker tag item-app:v1 taqwimcore/item-app:v1

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u taqwimcore --password-stdin

# Push image to Docker Hub
docker push taqwimcore/item-app:v1