#!/bin/bash
set -e

VERSION=$(cat Dockerfile | grep FROM | awk -F':' '{print $2}')

IMAGE=br1cascio/n8n:$VERSION
IMAGE_LATEST=br1cascio/n8n:latest

docker build --platform linux/amd64 --progress=plain -t $IMAGE -t $IMAGE_LATEST .

docker push $IMAGE
docker push $IMAGE_LATEST