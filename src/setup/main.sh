#!/bin/bash

ts=`date +"%Y%m%d%H%M"`

sudo cp update /usr/sbin/update
sudo chmod +x /usr/sbin/update


sudo add-apt-repository multiverse
update
#sudo apt update

sudo apt install -y zsh \
    zsh-theme-powerlevel9k \
    zsh-syntax-highlighting \
    python3-pip \
    python3 \
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
    keepassxc \
    shred \
    apt-transport-https \ 
    curl \
    wget \
    software-properties-common \
    sudo apt install plasma-desktop \
    ktorrent \
    mpv
    

# Install Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install Visual Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

#
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
#./nordvpn.sh


cp ~/.zshrc ~/zshrc.1
cp zshrc ~/.zshrc

