#!/bin/bash


# Using personal access token to GitHub Package container registry
echo "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" | docker login ghcr.io -u taqwimonehub --password-stdin

# Push image ke GitHub Package container registry
docker pull docker.pkg.github.com/taqwimonehub/container-images/karsajobs:latest