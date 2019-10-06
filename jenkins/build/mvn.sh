#!/bin/bash

echo "***********************"
echo "*******Building jar****"
echo "***********************"

#docker run --rm -v $PWD/../../java-app:/app -v /root/.m2:/root/.m2 -w /app maven mvn -B -DskipTests clean package 

docker run --rm -v $PWD/../../java-app:/app -v /root/.m2:/root/.m2 -w /app maven "$@"
