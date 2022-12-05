#!/bin/bash


DIR=~/code/

function select_dir() {
declare -a arr
count=1
for entry in "$DIR"*
do
    echo "$count) $entry"
    let "count++"
    arr=(${arr[@]} $entry)
echo $arr
done
}

select_dir
SESSION='main'

read -p "target:" X

tmux new-session -d -s $SESSION -c "${DIR}${X}"

WINDOW=0
tmux rename-WINDOW -t $SESSION:$WINDOW 'git' 

WINDOW=1
tmux new-window -t $SESSION:$WINDOW -n 'run' -c "${DIR}${X}"

WINDOW=2
tmux new-window -t $SESSION:$WINDOW -n 'vim' -c "${DIR}${X}"
tmux send-keys -t $SESSION:$WINDOW 'lvim .' C-m



tmux attach-session -t $SESSION
