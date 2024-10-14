###################### PYTHON ################################
# Aliases to make python3 and pip3 the dafault
# alias python=python3
# alias pip=pip3
#############################################################
#
alias cat=batcat
export BAT_THEME="Solarized (dark)"
alias lvim="~/.local/bin/lvim"
# alias nvim="~/.local/bin/lvim"
alias v="lvim"

export PATH=$PATH:~/Library/Flutter/flutter/bin
# Hide the name of the computer in the zshrc
DEFAULT_USER=$(whoami)

##################### JAVA ###################################
## Setting the java_home to java version 8
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export ANDROID_HOME=~/Library/Android/sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/platform-tools
#export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# Setting JAVA_HOME to PATH
#export PATH="$PATH:$JAVA_HOME/bin"
##############################################################

#                  OHMYZSH CONFIGS
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=""

#Themes
ZSH_THEME="simple"
# Use only if theme == robby

# Plugings
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# alias ls='exa -l -g --icons'
zsh="mate ~/.oh-my-zsh"

# Using highlight
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="$PATH:/opt/nvim-linux64/bin"
