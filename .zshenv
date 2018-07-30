#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH

export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH

export NDENV_ROOT=$HOME/.ndenv
export PATH=$NDENV_ROOT/bin:$PATH

export PATH=$HOME/bin:$PATH

if [ -f ~/.phpbrew/bashrc ]; then
    source ~/.phpbrew/bashrc
fi

if [ $SHLVL = 1 ]; then
    alias tmux="tmux -2 attach || tmux -2 new-session"
fi
