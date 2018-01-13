#!/bin/bash

DOT_FILES=(vimrc zshrc tmux.conf)

# Make link
for dot_file in ${DOT_FILES[@]}
do
  ln -sf ~/.dotfiles/${dot_file} $HOME/.${dot_file}
done

# Install dein and oh-my-zsh
[ ! -d ~/.vim/bundle ] && curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh && sh ~/installer.sh ~/.vim/bundle && rm ~/installer.sh
[ ! -d ~/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

exit 0
