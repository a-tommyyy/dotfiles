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
