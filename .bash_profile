
################
# Tool locations
################
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"
export GIT_HOME="/usr/local/git/git-1.7.1"
export NODE_HOME="/usr/local/node/node-0.1.97"

##############################
# Settings for common commands
##############################
export LESS="-iMSR"
export LESSHISTFILE=/private/tmp/$USER.lesshst
export CLICOLOR=1

alias ls="ls -F"
alias ll="ls -Al"
alias gvim="mvim"

source $GIT_HOME/contrib/completion/git-completion.bash

#############
# Setup paths
#############
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

for TOOL_DIR in `env | grep "_HOME" | cut -d"=" -f2`; do
  if [ -d "$TOOL_DIR/bin" ]; then
    export PATH="$PATH:$TOOL_DIR/bin"
  fi
  if [ -d "$TOOL_DIR/man" ]; then
    export MANPATH="$MANPATH:$TOOL_DIR/man"
  fi
done

################
# Shell settings
################
set -o vi
export HISTFILE=/private/tmp/$USER.bash_history
#export PS1='\u@\h:\W$(__git_ps1 "(%s)") ➡ '
export PS1='\[\033[0;37m\]\u@\h:\W$(__git_ps1 "(\[\033[1;33m\]%s\[\033[0;37m\])") ➡ \[\033[0m\]'
export SUDO_PS1='\[\033[1;31m\]\u@\h\[\033[0;37m\]:\W ★  \[\033[0m\]'

