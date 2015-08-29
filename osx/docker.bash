if which docker-machine >/dev/null; then
  if [ $(docker-machine status dev) == 'Running' ]; then
    eval "$(docker-machine env dev)"
  fi
fi

