#!/bin/bash

DOT_FILES=(zshrc)

# Make link
for dot_file in ${DOT_FILES[@]}
do
  ln -sf ~/.dotfiles/${dot_file} $HOME/.${dot_file}
done

exit 0
