#!/bin/bash
# This is used as the startup script by the Google compute unit
# And will start an nginx container as an example

# Update everything
sudo yum -y update

# Install Docker pre-reqs
sudo yum -y install yum-utils device-mapper-persistent-data lvm2

# Remove any Docker installed by CentOS as a default
sudo yum -y remove docker-client docker-common docker

# Add the official Docker repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install the official latest Docker Community Edition
sudo yum -y install docker-ce

# Enable and start the daemon
sudo systemctl start docker
sudo systemctl enable docker

# Starting nginx as a container as it is easy and always works
sudo docker run --name docker-nginx -p 80:80 -d nginx

