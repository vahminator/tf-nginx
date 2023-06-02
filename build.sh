#!/bin/bash
TAG="0.0.1"

echo "docker logging"
docker login -u <my-docker-login> -p <my-docker-token>

echo "build the docker image"
docker build -t vahminator/bitmedia:$TAG --no-cache .

echo "Push to Docker Hub"
docker push vahminator/bitmedia:$TAG 