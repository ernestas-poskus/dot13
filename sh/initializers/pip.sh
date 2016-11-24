if which pip > /dev/null; then
  if dot13_installed_or_mark 'pippackages'; then
    pip install cqlsh --user # Cassandra console
  fi
fi
