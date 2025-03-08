#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $DOCKER_PASSWORD >> /tmp/.auth

scp -i /opt/prod /tmp/.auth eliya@192.168.0.109:/tmp/.auth 
scp -i /opt/prod ./jenkins/deploy/publish.sh eliya@192.168.0.109:/tmp/publish.sh
ssh -i /opt/prod eliya@192.168.0.109 "/tmp/publish.sh"