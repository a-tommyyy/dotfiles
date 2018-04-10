#!/bin/bash
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && \
ZSH_CUSTOM="$ZSH/custom"

git --version 2>&1 >/dev/null && \
mkdir "$ZSH_CUSTOM/themes/spaceship-prompt" && \
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && \
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

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

cd ${DOT_DIRECTORY}

# git submodule
git submodule init && \
git submodule update && \
ln -snfv ${DOT_DIRECTORY}/themes/mytheme.sh ${HOME}/.tmux/powerline/themes/mytheme.sh && \
ln -snfv ${DOT_DIRECTORY}/themes/vcs_branch.sh ${HOME}/.tmux/powerline/segments/vcs_branch.sh

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
