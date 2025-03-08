#!/bin/bash

echo "******************************************"
echo "************ BUILD IN MAVEN **************"
echo "******************************************"

WORKSPACE=/home/moriel/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

# mvn -B -DskipTests clean package
docker run -m 6g --memory-swap 6g -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.6 "$@"