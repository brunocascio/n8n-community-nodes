#!/bin/bash
set -e

VERSION=$(cat Dockerfile | grep FROM | awk -F':' '{print $2}')

IMAGE=br1cascio/n8n:$VERSION

docker build --progress=plain -t $IMAGE .

docker push $IMAGE