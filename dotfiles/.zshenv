# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi


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

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export PATH="/opt/homebrew/opt/file-formula/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"


