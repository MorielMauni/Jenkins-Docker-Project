#!/bin/bash

echo "Pushing the image to Docker Hub..."

IMAGE=maven-project
DOCKER_USERNAME="taybot7@gmail.com"
# DOCKER_PASSWORD="di227UScP]w%NRQv"


echo "Logging in to Docker Hub..."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

echo "Tagging the image..."
docker tag $IMAGE:$BUILD_TAG taybot7/$IMAGE:$BUILD_TAG

echo "Pushing the image..."
docker push taybot7/$IMAGE:$BUILD_TAG