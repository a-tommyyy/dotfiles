if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap > /dev/null 2>&1
fi

alias rspec="bundle exec rspec"
alias guard="bundle exec guard"

SWAGGER_ID="adwh_user"
SWAGGER_PASS="terminal"
#export SWAGGER_ID SWAGGER_PASS
if [ -f ~/.phpbrew/bashrc ]; then
  source /home/tb-admin/.phpbrew/bashrc
fi

