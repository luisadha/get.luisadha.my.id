#!/data/data/com.termux/files/usr/bin/bash

  echo -e " source <(alrc env)"
  echo
  source <(alrc env)
}


if ! command -v git &>/dev/null; then
  echo "git not found"
  _run pkg install git
fi


if [ -d "$ALRC_HOME" ]; then
  echo "alrc-termux already installed"
  echo "updating alrc..."
  if [ -d "$ALRC_HOME/.git" ] && [ -e "$ALRC_HOME/update.sh" ]; then
    _run "$ALRC_HOME/update.sh"
  else
    pushd "$ALRC_HOME" &>/dev/null
    if [ -d ".git" ] && _run git pull; then
      popd &>/dev/null
      _run "$ALRC_HOME/update.sh"
    else
      popd &>/dev/null
      echo "cannot pull the request. back up to the old"
      _run mv -v "$ALRC_HOME" "${ALRC_HOME}_bak_$(date +%s)"
      alrc_install
    fi
  fi
else
  alrc_install
fi
