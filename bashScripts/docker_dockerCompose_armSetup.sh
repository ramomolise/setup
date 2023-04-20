#!/bin/bash

# Warning

read -p "Make sure you modify VS Code Server Docker Compose File first before continuing. Press Enter to Continue or Ctrl-C to exit setup..." 

# Installing docker

curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh

# Add User to docker group

sudo usermod -aG docker $USER

# Install docker-compose

curl -L https://github.com/linuxserver/docker-docker-compose/releases/download/1.28.5-ls32/docker-compose-armhf | sudo tee /usr/local/bin/docker-compose >/dev/null

cd ..
cd dockerCompose/visualStudioCodeServer/
sudo docker compose up -d
cd ..
cd nginxProxyManager/
sudo docker compose up -d

read -p "Nginx Proxy Manager and VS Code Server are Running...press Enter to continue..."
