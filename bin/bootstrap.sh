#!/usr/bin/env

# move to home
cd $HOME

# install or update homebrew
echo "install homebrew..."
which -s brew
if [[ $? != 0 ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  brew update
fi
echo -e "finished installing homebrew\n\n"

# install git
echo "install git..."
which -s git
if [[ $? != 0 ]]; then
  brew install git
fi
echo -e "finished installing git\n\n"

# install github cli
echo "install github cli..."
which -s gh
if [[ $? != 0 ]]; then
  brew install gh
  gh auth login
else
  brew upgrade gh
fi
echo -e "finished installing github cli\n\n"

# install ansible
echo "install ansible..."
which -s ansble-playbook
if [[ $? != 0 ]]; then
  brew install ansible
else
  brew upgrade ansible
fi
echo -e "finished installing ansible\n\n"

# checkout dotfile repo
echo "cloning https://github.com/atomiyama/dotfiles ..."
DOTFILE_PATH=$HOME/dotfiles
gh repo clone atomiyama/dotfiles $DOTFILE_PATH 2> /dev/null
if [[ $? != 0 ]]; then
  branch=$(git -C $DOTFILE_PATH describe --all)
  echo $branch
  if [ $branch == "heads/master" ]; then
    git -C $DOTFILE_PATH pull
  fi
fi
echo -e "finished cloning dotfile repo\n\n"

# apply playbook
file_path=$DOTFILE_PATH/ansible/mac.yml
if [ -e $file_path ]; then
  ansible-playbook $file_path -i 127.0.0.1 -K -v
fi
