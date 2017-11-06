#!/bin/bash
DOT_DIRECTORY="${HOME}/dotfiles"
cd ${DOT_DIRECTORY}

for f in .??*
do
  # ignore file
  [[ ${f} = ".bash_profile" ]] && continue
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)o
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ${HOME}/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ${HOME}/.bash_profile
echo 'export RBENV_ROOT="$HOME/.rbenv"' >> ${HOME}/.bash_profile
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> ${HOME}/.bash_profile
echo 'eval "$(rbenv init -)"'  >> ${HOME}/.bash_profile
echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile
echo 'alias vim="nvim"' >> ${HOME}/.bash_profile
exec $SHELL -l
