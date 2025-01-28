#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
curl -fsSL https://tailscale.com/install.sh | shsudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/raspbian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/raspbian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null]
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
wget https://raw.githubusercontent.com/SDSURocketProject/linux_workshop/refs/heads/master/linux_workshop1.yaml
wget https://raw.githubusercontent.com/SDSURocketProject/linux_workshop/refs/heads/master/linux_workshop2.yaml
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo docker image pull httpd:latest
sudo docker image pull jc21/nginx-proxy-manager:latest
sudo tailscale up