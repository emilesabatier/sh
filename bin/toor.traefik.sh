#!/bin/sh

printf "\n"
echo "\e[1;31m[Traefik]\e[0m"


# Add traefik compose file
mkdir ~/traefik
sudo cp /root/.sh/home/traefik/docker-compose.yml ~/traefik/docker-compose.yml
docker compose up -d -f ~/traefik/docker-compose.yml
