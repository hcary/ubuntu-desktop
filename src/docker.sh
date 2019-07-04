#!/bin/bash

sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

docker --version
