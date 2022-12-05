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

read -p "target: " TARGET;

DIRECTORY=$DIR$TARGET
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
else
  echo "no existing dir, making dir..."
  mkdir $DIRECTORY
fi


tmux new-session -d -s $SESSION -c "${DIRECTORY}"

WINDOW=0
tmux rename-WINDOW -t $SESSION:$WINDOW 'git' 

WINDOW=1
tmux new-window -t $SESSION:$WINDOW -n 'run' -c "${DIRECTORY}"

WINDOW=2
tmux new-window -t $SESSION:$WINDOW -n 'vim' -c "${DIRECTORY}"
tmux send-keys -t $SESSION:$WINDOW 'lvim .' C-m



tmux attach-session -t $SESSION
