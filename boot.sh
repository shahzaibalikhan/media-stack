#!/bin/sh
# This is a comment!
echo Booting...

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sleep 5

docker network create mynetwork

COMPOSE_PROFILES=jelly,tx docker compose up -d

docker compose -f docker-compose-nginx.yml up -d
