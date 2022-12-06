#!/bin/bash
<<<<<<< HEAD


#!/bin/bash

SYNC_DIR=~/dotfiles/
=======
SYNC_DIR=~/dotfiles
>>>>>>> 4236787 (fix: read script syntax)
echo "reading config files with ${SYNC_DIR}"
# targets=(~/utils, ~/.config/{i3,lvim,nvim,kitty,lvim})
# for target in "$targets"
# do
#     echo "copying ${target} to ${SYNC_DIR}"
#     cp $target $SYNC_DIR
# done
<<<<<<< HEAD
cp $SYNC_DIR*.sh ~/code/utils/ 
cp $SYNC_DIR{i3,kitty,nvim,lvim} ~/.config/ -r
cp $SYNC_DIR{.gitconfig,.bashrc,.bash_aliases,.tmux.conf} ~/
=======
cp $SYNC_DIR/*.sh ~/code/utils/ 
cp $SYNC_DIR/{i3,kitty,nvim,lvim} ~/.config/ -r
cp $SYNC_DIR/{.gitconfig,.bashrc,.bash_aliases,.tmux.conf} ~/
>>>>>>> 4236787 (fix: read script syntax)
