#!/bin/bash
sudo apt update -y && apt install git apt-transport-https ca-certificates curl software-properties-common -y
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository --yes "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"


# Install Docker Engine
sudo apt install docker-ce -y

sudo usermod -aG docker ${USER}


# Install Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -v

# Glone git repository
git clone https://<my-github-token>@github.com/vahminator/tf-nginx.git
cd /tf-nginx
docker-compose up -d
