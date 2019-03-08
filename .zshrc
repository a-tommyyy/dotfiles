# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR=nvim
eval "$(rbenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"
eval "$(direnv hook zsh)"

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
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

setopt print_eight_bit

autoload -Uz compinit
compinit
