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
else
  brew upgrade git
fi
echo -e "finished installing git\n\n"

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


# checkout this repository
echo "cloning https://github.com/atomiyama/dotfiles ..."
gh repo clone atomiyama/dotfiles $HOME/dotfiles
