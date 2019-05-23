if which pip &> /dev/null; then
  # Cassandra console
  if dot13_installed_or_mark 'pip-cqlsh'; then
    pip install cqlsh --user
  fi

  # Wakatime tracking
  if dot13_installed_or_mark 'pip-wakatime'; then
    pip install wakatime --user
  fi

  if dot13_installed_or_mark 'pip-ansible-lint'; then
    pip install ansible-lint --user
  fi

  if dot13_installed_or_mark 'pip-yamllint'; then
    pip install yamllint --user
  fi

  if dot13_installed_or_mark 'pip-pgcli'; then
    sudo dnf install redhat-rpm-config python-devel postgresql-devel
    pip install pgcli --user
  fi
fi
