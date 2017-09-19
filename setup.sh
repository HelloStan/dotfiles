#!/bin/bash

grep "# Source dotfiles/shrc" ~/.bashrc 2>/dev/null 1>/dev/null || \
cat >>~/.bashrc <<EOL

# Source dotfiles/shrc
if [ -f ~/dotfiles/shrc ]; then
    source ~/dotfiles/shrc
fi

EOL

grep "# Source dotfiles/shrc" ~/.zshrc 2>/dev/null 1>/dev/null || \
cat >>~/.zshrc <<EOL

# Source dotfiles/shrc
if [ -f ~/dotfiles/shrc ]; then
    source ~/dotfiles/shrc
fi

EOL

ln -s -f ~/dotfiles/vimrc ~/.vimrc
ln -s -f ~/dotfiles/tmux.conf ~/.tmux.conf

