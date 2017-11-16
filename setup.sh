#!/bin/bash
dotfiles_path=`pwd`

grep "# Source $dotfiles_path/shrc" ~/.bashrc 2>/dev/null 1>/dev/null || \
cat >>~/.bashrc <<EOL

# Source dotfiles/shrc
if [ -f $dotfiles_path/shrc ]; then
    source $dotfiles_path/shrc
fi

EOL

grep "# Source $dotfiles_path/shrc" ~/.zshrc 2>/dev/null 1>/dev/null || \
cat >>~/.zshrc <<EOL

# Source dotfiles/shrc
if [ -f $dotfiles_path/shrc ]; then
    source $dotfiles_path/shrc
fi

EOL

ln -s -f $dotfiles_path/vimrc ~/.vimrc
ln -s -f $dotfiles_path/tmux.conf ~/.tmux.conf

