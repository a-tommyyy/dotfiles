# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias vim="nvim"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias fig='docker-compose'
alias fir='docker-compose run --rm'
alias fie='docker-compose exec'

setopt print_eight_bit
autoload -Uz compinit
compinit

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(direnv hook zsh)"
# pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# rbenv
eval "$(rbenv init -)"
export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
# nodenv
eval "$(nodenv init -)"
export NODENV_ROOT=$HOME/.nodenv
export PATH=$NODENV_ROOT/bin:$PATH
# krew
export PATH=$HOME/.krew/bin:$PATH
