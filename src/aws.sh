#!/bin/bash

sudo apt install -y zsh zsh-theme-powerlevel9k zsh-syntax-highlighting python3-pip curl
sudo apt install python3-pip curl
sudo pip3 install --upgrade pip

#sudo -H pip3 install awscli --upgrade --user


curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli.zip"
unzip awscli.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
