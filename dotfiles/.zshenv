# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

# goenv
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export GOBIN=$GOPATH/bin

# rbenv
export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH

# nodenv
# export NODENV_ROOT=$HOME/.nodenv
# export PATH=$NODENV_ROOT/bin:$PATH

# nodebrew
export NODEBREW_ROOT=$HOME/.nodebrew
export PATH=$NODEBREW_ROOT/current/bin:$PATH

# github key
export PATH_TO_GITHUB_KEY=~/.ssh/id_rsa

# flutter
export PATH=$HOME/flutter/bin:$PATH

# cargo
export PATH=$HOME/.cargo/bin:$PATH

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

# githubcli
export GHCLI_ROOT=$HOME/.githubcli
export PATH=$GHCLI_ROOT/bin:$PATH
source "$HOME/.cargo/env"
