function tminit ()
{
  tmux new -s $1
}

function tmat()
{
  tmux attach -t $1
}

function tmde()
{
  tmux detach
}

function tmls()
{
  tmux list-sessions
}
