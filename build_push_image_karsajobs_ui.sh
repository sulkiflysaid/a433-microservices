#!/bin/bash

docker build -t kiflinux/karsajobs-ui:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u kiflinux --password-stdin
docker push kiflinux/karsajobs-ui:latest