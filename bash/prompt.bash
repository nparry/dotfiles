POWERLINE_CONFIG="$HOME/.dotfiles/bash/bash-powerline/bash-powerline.sh"
if [ -f "$POWERLINE_CONFIG" ]; then
  source "$POWERLINE_CONFIG"
else
  export PS1='\[\033[0;33m\]\u@\h\[\033[0m\]:\W$(__git_ps1 "(\[\033[0;37m\]%s\[\033[0m\])") ➡ \[\033[0m\]'
fi

