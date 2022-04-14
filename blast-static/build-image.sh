#!/bin/bash

USERNAME=${1:-"ncbi"}
IMAGE=blast-static
VERSION=`cat VERSION`

docker build --build-arg version=${VERSION} -t $USERNAME/$IMAGE:$VERSION .
docker tag $USERNAME/$IMAGE:$VERSION $USERNAME/$IMAGE:latest
