#!/bin/bash


sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;


sudo apt update && 
sudo apt-get update &&

## Donwload node repo
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash - &&
cat /etc/apt/sources.list.d/nodesource.list &&
deb https://deb.nodesource.com/node_14.x focal main &&
deb-src https://deb.nodesource.com/node_14.x focal main &&
#####


## Install docker and compose
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release &&

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null &&

sudo apt-get update &&
sudo apt-get install docker-ce docker-ce-cli containerd.io &&

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&

#######

## Default apps 
sudo apt install zsh python3 python-pip nodejs -y &&

## ohmyzsh
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh &&

## Autocomplete and syntax highlight plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting &&

## rm -rf ~/.zshrc &&

git clone https://github.com/Lemesigor/dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
## ln -s ~/.dotfiles/Debian/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&

chsh -s $(which zsh) &&

echo "Finished"