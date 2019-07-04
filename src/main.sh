#!/bin/bash

ts=`date +"%Y%m%d%H%M"`

sudo apt install -y zsh \
    zsh-theme-powerlevel9k \
    zsh-syntax-highlighting \
    python3-pip \
    curl \
    fonts-powerline \
    terminology \
    konsole \
    chromium-browser \
    python3-pip \
    curl \
    htop \
    software-properties-common

sudo pip3 install --upgrade pip

if [ ! -f /etc/oh-my-zsh.txt ];
then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo sh -c "echo ${ts} >> /etc/oh-my-zsh.txt"
fi

cp ../templates/zshrc ~/.zshrc
sudo cp ../templates/update /usr/sbin
sudo chmod +x /usr/sbin/update

./docker.sh
./ansible.sh
./aws.sh



