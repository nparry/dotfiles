if which brew >/dev/null; then
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH"
  export MANPATH="$(brew --prefix)/share/man:$MANPATH"
fi

