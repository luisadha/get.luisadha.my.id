# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac
: ""
alias pr='nvim $PREFIX/etc/profile'
alias bbrc='nvim $PREFIX/etc/bash.bashrc'
alias dbrc='nvim ~/.bashrc'
alias dbpr='nvim ~/.bash_profile'
alias dpr='nvim ~/.profile'
alias ppr='nvim ~/@/@t.me/${fromProfile}'
: "Depend-Func"
preexec() { echo -e "just typed $1\n"; }
precmd() { echo -e "\n🔀 Suffle the songs, (\`unset precmd' to disable this feature)" && brandomusicv && drawercli;
}
: ""
if $(declare -a nunuhay); then
  alias nunuhay='source ~/.profile && nunuhay ${nunuhay[@]} && php -S localhost:8000 -t /sdcard/htdocs/'
fi

: "Bash-it"
# source /data/data/com.termux/files/home/.bash_it.git/bash_it.sh
: "My Custom Path"
export PATH="$PATH:~/.local/bin:/system/bin:$HOME/.cargo/bin"
: "My Habbit Aliases"
alias staradd='todo.sh addm'
alias starlist='todo.sh ls'
alias starun='todo.sh del'
alias stardel='todo.sh del'
alias memo='memorandum.sh'
alias py='python3'
alias cetak='nohup'
: ""
: "A. Alrc-Termux Configuration"
: "  1. Using ztmexluis installer (Sandboxed)"

#. ztmexluis run::module:alrc

 #. ztmexluis go:module && cd alrc-termux-${ALRC_VERSION}

: "  2. Using manual by modify .bashrc (Global Settings)"
: " =>>(HAPUS BAGIAN INI UNTUK MEMATIKAN KONFIGURASI)               "
# This variable serves to group which plugins must be turned on by alrc.
alrc_plugin='
  al_include_brandomusicv
  al_include_drawercli
  al_include_musiktap
  al_include_bash-preexec
'
# This variable will initialize the environment variable so that it can be read by alrc-termux, don't forget to insert the source "$ALRC"/alrc-termux.sh also at the end.
alrc_config='
# Path to your alrc-termux installation.
  export ALRC="/data/data/com.termux/files/home/.local/share/alrc-termux"
export ALRC_USE_STARSHIP="random"
export ALRC_USE_ALFETCH="true"
export ALRC_MOTD_USE_BOXES="html"
# Set name of the addtional border theme by boxes  to load. Optionally, if you set this to "random"
# it will load a random design boxes each time that alrc-termux is loaded.
# Uncomment the following line if you dont use brandomusicv plugins
  export BRANDO_RESPONSE="y"
  export BRANDO_NO_CACHE="true"

  realtime_date "<== Init [alrc-termux]"
  source "$ALRC"/alrc-termux.sh 2>&-
  source "$ALRC"/lib/remove_addon_files.sh 2>&-;
'
# Let's finish with eval to get alrc working
eval "${alrc_config[@]}"
eval "${alrc_plugin[@]}"
: " <==(HAPUS BAGIAN INI UNTUK MEMATIKAN KONFIGURASI)                        "

: "Oh-My-Bash Configuration"
realtime_date "<== Init [oh-my-bash]"
# Path to your oh-my-bash installation.
export OSH=~/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
#
# it'll load a random theme each time that oh-my-bash is loaded.
#OSH_THEME="rana"

# If you set OSH_THEME to "random", you can ignore themes you don't like.
: "OMB_THEME_RANDOM_IGNORED=("powerbash10k" "wanelo" "purity") "

# Uncomment the following line to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment the following line if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
 HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
 OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
  progress
  zoxide
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
 if [ "$DISPLAY" ] || [ "$SSH" ]; then
     plugins+=(tmux-autoattach)
  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
  else
   export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

#######################################################################################################

# Load drawercli alias generated by drawercli plugin alrc
source /data/data/com.termux/files/home/.drawercli_aliases

# Init termuxlauncher generated by drawercli plugin alrc
source /data/data/com.termux/files/home/storage/shared/termuxlauncher/.apps-launcher

. `which env_parallel.bash`

### Bashhub.com Installation.
### This Should be at the EOF. https://bashhub.com/docs
if [ -f ~/.bashhub/bashhub.sh ]; then
  unset -f bh
    source ~/.bashhub/bashhub.sh
fi
