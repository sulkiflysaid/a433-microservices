#!/bin/bash

docker build -t kiflinux/karsajobs:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u kiflinux --password-stdin
docker push kiflinux/karsajobs:latest