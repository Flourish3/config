#!/bin/bash

#==============
# Install packages
#==============

bash ./install-packages.sh

#==============
# Variables
#==============
dotfiles_dir=~/repos/setup

#sudo rm -rf ~/.zshrc > /dev/null 2>&1

ln -sf $dotfiles_dir/zsh/zsh_prompt ~/.zsh_prompt
#ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc

#==============
# Set zsh as the default shell
#==============
sudo chsh -s /bin/zsh