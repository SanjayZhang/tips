# create session
tmux new
tmux new -s [session-name]
# rename session
tmux rename-session [-t current-name] [new-name]


# default prefix
Ctrl-B

# create new window
prefic + C
# rename window
prefix + ,

# detach and attach
* detach
    prefix + D
* attach
    tmux attach -t [session-name]
