#!/bin/bash
DOT_DIRECTORY="${HOME}/dotfiles"
cd ${DOT_DIRECTORY}

for f in .??*
do
  # ignore file
  [ ${f} = ".bash_profile" ] && continue
  [ ${f} = ".git" ] && continue
  [ ${f} = ".gitignore" ] && continue
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

# git submodule
git submodule init && git submodule update
ln -snfv .tmux/mytheme.sh .tmux/powerline/themes/mytheme.sh
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)o
