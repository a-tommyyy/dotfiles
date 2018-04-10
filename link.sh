#!/bin/bash
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && \
ZSH_CUSTOM="$ZSH/custom"

if git --version 2>&1 >/dev/null ; then
  # spaceship zsh theme
  mkdir "$ZSH_CUSTOM/themes/spaceship-prompt"
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && \
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

  # zsh-auto-suggestion
  git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

  # zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

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
git submodule update

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
