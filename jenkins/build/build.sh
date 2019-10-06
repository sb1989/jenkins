#!/bin/bash

#Copy the new jar to the build location

cp -f ../../java-app/target/*.jar ./

echo "**********************"
echo "*****Build image******"
echo "**********************"

cd .. && docker-compose -f docker-compose-java.yml build --no-cache
