#!/bin/bash

echo "copying jar file"
cp -f java/app/target/*.jar jenkins/build/


echo "Chganing directory to jenkins/build"
echo "Building docker image"
cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache