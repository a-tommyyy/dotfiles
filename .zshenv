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
