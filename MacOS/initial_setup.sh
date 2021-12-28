#!/bin/sh

# Initial CLI
xcode-select --install &&

### Oh My ZSH
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
rm -rf ~/.zshrc &&

### Creating the dotfiles links
git clone git@github.com:Lemesigor/dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
ln -s ~/.dotfiles/MacOS/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&

### Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/igorgomeslemes/.profile && eval "$(/opt/homebrew/bin/brew shellenv)" &&
brew bundle --file ~/.dotfiles/MacOS/Brewfile &&
