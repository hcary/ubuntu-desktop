#!/bin/bash

ts=`date +"%Y%m%d%H%M"`

sudo add-apt-repository multiverse
sudo apt update

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
    software-properties-common \
    git \
    nfs-common \
    keepass2 \
    mplayer \
    gthumb \
    torbrowser-launcher \
    gimp \
    steam \
    audacious \
    p7zip-full \
    unrar \
    zip \
    unzip \
    keepassxc

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

sudo pip3 install --upgrade pip

if [ ! -f /etc/oh-my-zsh.txt ];
then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo sh -c "echo ${ts} >> /etc/oh-my-zsh.txt"
fi

if [ ! -f  ~/.zshrc ];
then
    cp ../templates/zshrc ~/.zshrc
fi

if [ ! -f /usr/sbin/update ];
then

    sudo cp ../templates/update /usr/sbin
    sudo chmod +x /usr/sbin/update
fi

./docker.sh
#./ansible.sh
#./aws.sh
./nordvpn.sh



