#!/bin/bash

DIR=~/code/

function select_dir() {
# declare -a arr
count=1
for entry in "$DIR"*
do
    echo "$count) $entry"
    let "count++"
    arr=(${arr[@]} $entry)
# echo $arr
done
}

function sessionize() {
tmux new-session -d -s $SESSION -c "${DIRECTORY}"

WINDOW=0
tmux rename-WINDOW -t $SESSION:$WINDOW 'git' 

WINDOW=1
tmux new-window -t $SESSION:$WINDOW -n 'run' -c "${DIRECTORY}"

WINDOW=2
tmux new-window -t $SESSION:$WINDOW -n 'vim' -c "${DIRECTORY}"
tmux send-keys -t $SESSION:$WINDOW 'lvim .' C-m



tmux attach-session -t $SESSION
}

select_dir
SESSION='main'

read -p "target: " TARGET;

DIRECTORY=$DIR$TARGET
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
  sessionize
else
    echo "$DIRECTORY does NOT exist."
    read -p  "create it? [y/N]" yn
    echo    # (optional) move to a new line
    case $yn in
        [Yy][eS][sS]|[yY] ) mkdir $DIRECTORY; sessionize 
            ;;
        [Nn]* ) exit 0;;
    esac
    # if [[ ! $REPLY =~ ^[Yy]$ ]]
    # then
    #     echo "no existing dir, making dir..."
    #     mkdir $DIRECTORY
    # else
    #     exit 0

    
fi


