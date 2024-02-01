#!/bin/bash

ts=`date +"%Y%m%d%H%M"`

mkdir /home/hcary/bin/
export PATH=$PATH:/home/hcary/bin/

if [ ! -f $HOME/bin/update ];
then

    cp update $HOME/bin/
    sudo chmod +x $HOME/bin/update
fi


sudo add-apt-repository multiverse
update
sudo apt update

sudo apt install -y \
    apt-transport-https \
    aptitude \
    audacious \
    clamav \
    clamtk \
    fonts-powerline \
    gimp \
    git \
    gthumb \
    htop \
    keepass2 \
    keepassxc \
    konsole \
    mplayer \
    mpv \
    nfs-common \
    p7zip-full \
    python3 \
    python3-pip \
    python3-pip \
    qbittorrent \
    terminology \
    tree \
    unzip \
    wget \
    zip \
    zsh \
    yt-dlp \
    zsh-syntax-highlighting \
    zsh-theme-powerlevel9k 

 
#sudo snap install curl

#
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp 

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

#./docker.sh
#./ansible.sh
#./aws.sh
#./nordvpn.sh


cp ~/.zshrc ~/zshrc.1
cp zshrc ~/.zshrc


#sudo aptitude install -y kde-standard
