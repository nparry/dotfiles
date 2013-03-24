if which brew >/dev/null; then
  export RBENV_ROOT=$(brew --prefix)/opt/rbenv
elif [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

if which rbenv >/dev/null; then
  # Fix Dreamhost strangeness
  unset GEM_HOME
  unset GEM_PATH

  # Strip system gem stuff from the path
  # http://stackoverflow.com/questions/370047/what-is-the-most-elegant-way-to-remove-a-path-from-the-path-variable-in-bash
  export PATH=$(
    IFS=:
    t=($PATH)
    unset IFS
    t=(${t[@]%%*gems*})
    IFS=:
    echo "${t[*]}"
  )

  eval "$(rbenv init -)"
fi

