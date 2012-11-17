if which -s brew; then
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  export PATH="$(brew --prefix)/bin:$PATH"
  export MANPATH="$(brew --prefix)/share/man:$MANPATH"
fi

