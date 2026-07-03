#!/bin/bash

sudo mkdir -p /storage/docker-homol/deploy/gitlab/{data,logs,config}

docker run -dit \
  -p "2222:22" \
  -p "80:80" \
  -p "443:443" \
  --name gitlab \
  --hostname IP-DO-SERVER \
  -v /storage/docker-homol/deploy/gitlab/data:/var/opt/gitlab \
  -v /storage/docker-homol/deploy/gitlab/logs:/var/log/gitlab \
  -v /storage/docker-homol/deploy/gitlab/config:/etc/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ce:14.7.6-ce.0

# REFERENCIA: https://docs.gitlab.com/ee/install/docker.html
