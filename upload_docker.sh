#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="30011802/udacityoperationalizeml"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username 30011802
docker image tag app:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
