#!/bin/sh

printf "\n"
echo "\e[1;31m[Docker]\e[0m"


# Set up Docker's apt repository
apt update
apt install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update

# Install the Docker packages
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin compose-plugin

# Add Docker rights
groupadd docker
usermod -aG docker toor
