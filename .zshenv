# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias ll='ls -al'
alias la='ls -a'

if [ $SHLVL = 1 ]; then
    alias tmux="tmux -2 attach || tmux -2 new-session"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

if [ -f ~/.phpbrew/bashrc ]; then
    source ~/.phpbrew/bashrc
fi

xmodmap ~/.Xmodmap
