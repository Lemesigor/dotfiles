###################### Project ################################
source ~/.zshrc-project-env

###################### PYTHON ################################
# Aliases to make python3 and pip3 the dafault
alias python=python3
alias pip=pip3
#############################################################
#
alias cat=bat
export BAT_THEME="Solarized (dark)"
# alias vim=nvim
alias le="exa -l -g --icons"
alias lvim="~/.local/bin/lvim"
alias v=lvim

# Hide the name of the computer in the zshrc
DEFAULT_USER=$(whoami)

##################### JAVA ###################################
## Setting the java_home to java version 8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
##export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# Setting JAVA_HOME to PATH
export PATH="$PATH:$JAVA_HOME/bin"
##############################################################

#                  OHMYZSH CONFIGS
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/igorgomeslemes/.oh-my-zsh"

#Themes
ZSH_THEME="agnoster"
# Use only if theme == robby

# Plugings
plugins=(git z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

zsh="mate ~/.oh-my-zsh"

# Using highlight
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
