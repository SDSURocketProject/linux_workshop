#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
curl -fsSL https://tailscale.com/install.sh | sh
curl -sSL https://get.docker.com | sh
sudo apt-get install docker-compose -y
sudo docker image pull httpd:latest
sudo docker image pull jc21/nginx-proxy-manager:latest
wget https://raw.githubusercontent.com/SDSURocketProject/linux_workshop/refs/heads/master/linux_workshop1.yaml
wget https://raw.githubusercontent.com/SDSURocketProject/linux_workshop/refs/heads/master/linux_workshop2.yaml
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo tailscale up
read -p "- Press Return to exit..." _