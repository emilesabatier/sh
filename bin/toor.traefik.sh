#!/bin/sh

printf "\n"
echo "\e[1;31m[Traefik]\e[0m"


# Add traefik compose file
mkdir /home/toor/traefik
cp /home/toor/.sh/home/traefik/compose.yaml /home/toor/traefik/compose.yaml
docker compose -f /home/toor/traefik/compose.yaml up -d
