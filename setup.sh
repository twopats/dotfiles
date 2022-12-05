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

# SESSION='main'

# tmux new-session -d -s $SESSION -c $DIR

# WINDOW=0
# tmux rename-WINDOW -t $SESSION:$WINDOW 'git'

# WINDOW=1
# tmux new-window -t $session:$WINDOW -n 'run'

# WINDOW=2
# tmux new-window -t $session:$WINDOW -n 'vim'
# tmux send-keys -t $session:$WINDOW 'lvim .' C-m



# tmux attach-session -t $SESSION
