# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR=nvim
eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
eval "$(goenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

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
if [[ "$(uname -m)" == "arm64" ]]; then
  export PATH="/opt/homebrew/Cellar/mysql@5.7/5.7.32/bin:$PATH"
fi
if [[ "$(uname -m)" == "x86_64" ]]; then
  export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
fi
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export PATH="/opt/homebrew/opt/file-formula/bin:$PATH"

# settings for using japanese input on manjaro
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx

setopt print_eight_bit

autoload -Uz compinit
compinit

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
