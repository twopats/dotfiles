#!/bin/bash

SYNC_DIR=~/code/dotfiles
echo "syncing config files with ${SYNC_DIR}"
# targets=(~/utils, ~/.config/{i3,lvim,nvim,kitty,lvim})
# for target in "$targets"
# do
#     echo "copying ${target} to ${SYNC_DIR}"
#     cp $target $SYNC_DIR
# done
cp ~/images $SYNC_DIR/images -r
cp ~/.config/{i3,kitty,nvim,lvim} $SYNC_DIR -r
cp ~/{.gitconfig,.bashrc,.bash_aliases,.tmux.conf,.fehbg} $SYNC_DIR
