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

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/akifumitomiyama/.nodenv/versions/10.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
