* default prefix
Ctrl-B

# Sessions
* create session
tmux new
tmux new -s [session-name]
* rename session
tmux rename-session [-t current-name] [new-name]

* switch session by name:
prefix + C-f

* detach and attach
* detach
    prefix + D
* attach
    tmux attach -t [session-name]

# Windows
* create new window
prefic + C

* rename window
prefix + ,

*<prefix> Tab brings you to the last active window


