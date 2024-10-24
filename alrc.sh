#!/usr/bin/env bash
#<html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>get.luisadha.my.id</title><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" /><link rel="stylesheet" href="https://unpkg.com/@highlightjs/cdn-assets@11.5.0/styles/default.min.css"><script src="https://unpkg.com/@highlightjs/cdn-assets@11.5.0/highlight.min.js"></script><script> hljs.initHighlightingOnLoad();</script><style>
#        body { font-family: monospace; background: rgba(245, 245, 245, 1); }
#        footer { font-size: 0.65rem; }
#        a { color: inherit; text-decoration: none; }
#        pre, code { border-radius: 4px; font-size: 1.1rem; color: #F0F0F0 !important; background: rgb(11 12 14) !important; }
#        .github-fork-ribbon:before { background-color: rgb(11 12 14); }</style></head><body>: alrc(1) installer<a class="github-fork-ribbon" href="https://github.com/luisadha/alrc-termux" data-ribbon="Contribute on GitHub" title="Contribute on GitHub">Contribute on GitHub</a> <h2>

## get.luisadha.my.id</h2><span>Use this self-hosted script to install your alrc-termux framework.</span><h3>
### <a name="usage" href="#usage">USAGE</a></h2><pre><code code="shell">curl -Lo- https://get.luisadha.my.id/alrc.sh | bash</code></pre><h3>
### <a name="code" href="#code">CODE</a></h2><pre><code code="bash">
##
# `alrc(1)` installer script that fetches the canonical `setup.sh` script and runs it
# in the calling context.
  
PREFIX="/data/data/com.termux/files/usr"
TERMUX_BIN="${PREFIX}/bin"
REPO="https://github.com/luisadha/alrc-termux.git"
BRANCH="v4.3.4"
ALRC_HOME="$HOME/.local/share/alrc-termux"


_run() {
  echo "run: $@"
  $@
  return $?
}


alrc_install() {
  _run git clone -b main "$REPO" "$ALRC_HOME"
  [ -e "${TERMUX_BIN}/alrc" ] && _run rm -v "${TERMUX_BIN}/alrc"
  _run ln -sv "$ALRC_HOME/alrc" "${TERMUX_BIN}/alrc"


  [ -f $HOME/.shortcuts/alrc.test ] && _run rm -v "$HOME/.shortcuts/alrc.test"
  _run ln -sv "$ALRC_HOME/test/.shortcuts/alrc.test" "$HOME/.shortcuts/alrc.test"
  
  echo
  echo "status: alrc installed successfully"
  echo "please add environment to your bash config: "
  echo -e " source <(alrc env)"
  echo
  source <(alrc env)
}


if ! command -v git &>/dev/null; then
  echo "git not found"
  _run pkg install git
fi
  if ! command -v hide_soft_keyboard &>/dev/null; then
  echo -e "'hide_soft_keyboard' not found"
  _run git clone https://github.com/luisadha/hide_soft_keyboard.git
  cd hide_soft_keyboard;
  make install;
  cd - &>/dev/null;
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

##</code></pre><footer>#### Copyright (c) 2024 <a href="https://luisadha.my.id">luisadha.my.id</a> (<a href="https://github.com/luisadha">github.com/luisadha</a>) ####</footer></body></html>

