#this line above is a workarount to https://github.com/creationix/nvm/issues/1652
PATH="/usr/local/bin:$(getconf PATH)"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git alias-tips bgnotify composer docker-compose docker extract)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.composer/vendor/bin:$PATH"

export PATH="/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/.composer/vendor/bin:/usr/local:/usr/local/bin:/usr/local/sbin:$HOME/.bin:$(brew --prefix homebrew/php/php71)/bin:$PATH"
source $ZSH/oh-my-zsh.sh

export LOLCOMMITS_FORK=true
export LOLCOMMITS_STEALTH=true

##################
##### ALIAS ######
##################

source ~/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

prompt_context(){
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)𝝺 $USER"
  fi
}

