#!/bin/bash
dotfiles_path=`pwd`

echo "Source shrc in .bashrc"
grep "# Source $dotfiles_path/shrc" ~/.bashrc 2>/dev/null 1>/dev/null || \
cat >>~/.bashrc <<EOL

# Source dotfiles/shrc
if [ -f $dotfiles_path/shrc ]; then
    source $dotfiles_path/shrc
fi

EOL

echo "Source shrc in .zshrc"
grep "# Source $dotfiles_path/shrc" ~/.zshrc 2>/dev/null 1>/dev/null || \
cat >>~/.zshrc <<EOL

# Source dotfiles/shrc
if [ -f $dotfiles_path/shrc ]; then
    source $dotfiles_path/shrc
fi

EOL

echo "Set symlinks for .vimrc .ideavim .tmux.confy"
ln -s -f $dotfiles_path/vimrc ~/.vimrc
ln -s -f $dotfiles_path/vimrc ~/.ideavimrc
ln -s -f $dotfiles_path/tmux.conf ~/.tmux.conf

read -e -p "Set .gitconfig? " choice
[[ "$choice" == [Yy]* ]] && \
    ln -s -f $dotfiles_path/gitconfig ~/.gitconfig; \
    ln -s -f $dotfiles_path/gitignore ~/.gitignore

