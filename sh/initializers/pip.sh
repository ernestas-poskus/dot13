if which pip > /dev/null; then

  # Cassandra console
  if dot13_installed_or_mark 'pipcqlsh'; then
    pip install cqlsh --user
  fi

  # Wakatime tracking
  if dot13_installed_or_mark 'pipwakatime'; then
    pip install wakatime --user
  fi
fi
