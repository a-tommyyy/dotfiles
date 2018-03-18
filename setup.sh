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
cp -u .tmux/mytheme.sh .tmux/powerline/themes/mytheme.sh
cp -u .tmux/vcs_branch.sh .tmux/powerline/segments/vcs_branch.sh
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)o
