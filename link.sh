#!/bin/bash
DOT_DIRECTORY="${HOME}/dotfiles"
cd ${DOT_DIRECTORY}

for f in .??*
do
  # ignore file
  [ ${f} = ".bash_profile" ] && continue
  [ ${f} = ".git" ] && continue
  [ ${f} = ".gitignore" ] && continue
  [ ${f} = ".gitmodules" ] && continue
  [ ${f} = ".config" ] && continue
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
 
cd .config

for f in ??*
do
    if [ -e ${HOME}/.config/${f} ]; then
        echo ${f} already exist.
    else
        ln -sv ${DOT_DIRECTORY}/.config/${f} ${HOME}/.config/${f}
    fi
done

#if [ "$(uname)" == 'Darwin' ]; then
#  OS='Mac'
#elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
#  OS='Linux'
#else
#  echo "Platform ($(uname-a)) is not supported."
#fi

cd ..

# git submodule
git submodule init && git submodule update
ln -snfv .tmux/mytheme.sh .tmux/powerline/themes/mytheme.sh
ln -snfv .tmux/vcs_branch.sh .tmux/powerline/segments/vcs_branch.sh

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)o
