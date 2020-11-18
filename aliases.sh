#!/bin/bash

alias v="vim"
alias ..="cd .."
alias ls="ls -G"
alias cl="clear"

# tmux aliases
alias tmux="tmux -2"
alias tmn="tmux -2 new -s"
alias tma="tmux attach -t"
alias tmls="tmux list-sessions"
alias tmk="tmux kill-session -t"

# turn newline separated output (like from sed / ag) into space separated output
alias ws="tr '\n' ' '"

# LinkedIn Aliases
alias job="cd ~/repos/voyager-web_trunk/"
alias bjob="cd ~/repos/backup/voyager-web_trunk/"
alias dco="git review dcommit -r"
alias rb="rbt post HEAD~1..HEAD"
alias sub="git submit --async"
alias lint="./.multiproduct/git-hooks/pre-create-review"
alias tlint="./node_modules/.bin/ember-template-lint --config-path .template-lintrc.js"

# Make ag ignore shit again
alias ag="ag --path-to-ignore ~/.ignore"
