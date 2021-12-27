#!/bin/bash


sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;


sudo apt update && 
sudo apt-get update &&

## Donwload node repo
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash - &&
#####


## Install docker and compose
sudo apt-get install ca-certificates curl gnupg lsb-release -y &&

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null &&

sudo apt-get update &&
sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
#######

## Default apps 
sudo apt install zsh python3 python3-pip nodejs -y &&

sudo snap install zoom-client &&  
sudo snap install code --classic &&  
sudo snap install insomnia &&  
sudo snap install spotify &&

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&



## ohmyzsh
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh &&

rm -rf ~/.zshrc &&

git clone git@github.com:Lemesigor/dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
ln -s ~/.dotfiles/Debian/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&

## System update ##
# sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

chsh -s $(which zsh) &&

echo "Finished"