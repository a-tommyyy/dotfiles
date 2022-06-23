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

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
# direnv
eval "$(direnv hook zsh)"
# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
eval "$(pyenv init -)"
# rbenv
export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
# nodenv
export NODENV_ROOT=$HOME/.nodenv
export PATH=$NODENV_ROOT/bin:$PATH
eval "$(nodenv init -)"
# krew
export PATH=$HOME/.krew/bin:$PATH
# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# Embulk
export PATH="$HOME/.embulk/bin:$PATH"
