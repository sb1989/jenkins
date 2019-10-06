#!/bin/bash

IMAGE="maven-project"

echo "**********************"
echo "*****Push image*******"
echo "**********************"

docker login -u shoubiz -p $PASS

docker tag $IMAGE:$BUILD_TAG shoubiz/$IMAGE:$BUILD_TAG

docker push shoubiz/$IMAGE:$BUILD_TAG

