#!/bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 kiflinux/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u kiflinux --password-stdin
docker push kiflinux/item-app:v1