if which brew >/dev/null; then
  export RBENV_ROOT=$(brew --prefix)/opt/rbenv
elif [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

if which rbenv >/dev/null; then eval "$(rbenv init -)"; fi

