#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

eval "$(rbenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"
eval "$(ndenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim="nvim"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias fig='docker-compose'
alias fir='docker-compose run --rm'
alias fie='docker-compose exec'

# studyplus
PATH_TO_GITHUB_KEY=~/.ssh/id_rsa

setopt print_eight_bit

autoload -Uz compinit
compinit
