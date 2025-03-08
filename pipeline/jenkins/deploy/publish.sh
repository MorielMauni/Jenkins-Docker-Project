#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export DOCKER_PASSWORD=$(sed -n '3p' /tmp/.auth)

docker login -u taybot7 -p $DOCKER_PASSWORD

cd ~/maven && docker-compose up -d