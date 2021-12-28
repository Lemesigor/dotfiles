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

## Workaround to have docker running at reboot and daemon running correctly
sudo touch /etc/fstab &&
echo "update-alternatives --set iptables /usr/sbin/iptables-legacy\nupdate-alternatives --set ip6tables /usr/sbin/ip6tables-legacy" | sudo tee /etc/fstab &&
echo 'ilemes ALL=(ALL) NOPASSWD: /usr/bin/dockerd' | sudo EDITOR='tee -a' visudo &&
sudo usermod -a -G docker $USER &&
######

# Default apps 
sudo apt install zsh python3 python3-pip nodejs -y &&

# ohmyzsh
sudo sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

## Autocomplete and syntax highlight plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&

 rm -rf ~/.zshrc &&

git clone git@github.com:Lemesigor/dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
ln -s ~/.dotfiles/Debian/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&

chsh -s $(which zsh) &&

echo "Finished"
