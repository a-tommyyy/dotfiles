# Example aliases
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH

export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH

export NDENV_ROOT=$HOME/.ndenv
export PATH=$NDENV_ROOT/bin:$PATH

if [ -f ~/.phpbrew/bashrc ]; then
    source ~/.phpbrew/bashrc
fi

if [ $SHLVL = 1 ]; then
    alias tmux="tmux -2 attach || tmux -2 new-session"
fi

alias rspec="bundle exec rspec"
alias guard="bundle exec guard"
alias pbcopy="xsel --clipboard --input"
alias vim="nvim"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
