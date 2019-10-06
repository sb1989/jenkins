#!/bin/bash

echo maven-project > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@192.168.1.123:/tmp/.auth

scp -i /opt/prod ./publish.sh prod-user@192.168.1.123:/tmp/publish.sh

ssh -i /opt/prod prod-user@192.168.1.123 "/tmp/publish.sh"
