#!/bin/bash

#==============
# Install packages
#==============

bash ./install-packages.sh

#==============
# Variables
#==============
dotfiles_dir=~/repos/config

sudo rm -rf ~/.zshrc > /dev/null 2>&1

#ln -sf $dotfiles_dir/zsh/zsh_prompt ~/.zsh_prompt
ln -sf $dotfiles_dir/zsh/.zshrc ~/.zshrc

# Alacritty
mkdir ~/.config/alacritty
ln -sf $dotfiles_dir/config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

# Tmux setting
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
ln -sf $dotfiles_dir/.tmux.conf ~/.tmux.conf

#==============
# Set zsh as the default shell
#==============
sudo chsh -s /bin/zsh
