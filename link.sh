#!/bin/bash
ZSH_CUSTOM="$ZSH/custom"

DOT_DIRECTORY="${HOME}/dotfiles"
cd ${DOT_DIRECTORY}

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

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

if [ ! -e ${HOME}/.config ]; then
    mkdir -p ${HOME}/.config
fi
cd .config

for f in ??*
do
    if [ -e ${HOME}/.config/${f} ]; then
        echo ${f} already exist.
    else
        ln -sv ${DOT_DIRECTORY}/.config/${f} ${HOME}/.config/${f}
    fi
done

cd ${DOT_DIRECTORY}

# git submodule
git submodule init && \
git submodule update

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
