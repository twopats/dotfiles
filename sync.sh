#!/bin/bash

echo "syncing config files with ~/dotfiles..."
SYNC_DIR=~/dotfiles/
# targets=(~/utils, ~/.config/{i3,lvim,nvim,kitty,lvim})
# for target in "$targets"
# do
#     echo "copying ${target} to ${SYNC_DIR}"
#     cp $target $SYNC_DIR
# done
cp ~/utils/* $SYNC_DIR -r
cp ~/.config/{i3,kitty,nvim,lvim} $SYNC_DIR -r
cp ~/{.gitconfig,.bashrc,.bash_aliases,.tmux.conf} $SYNC_DIR
