#!/bin/bash

# This is a simple handmade script to setup docker in a Debian environment only.
# It goes without saying that it needs to be run with root privileges (sudo, doas, etc.)

# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
 $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
 tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

# Install the necessary packages
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add the current user to the Docker group
usermod -aG docker $USER

# Enable the Docker service
sudo systemctl enable --now docker
