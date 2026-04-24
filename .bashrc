# .bashrcは対話型セッションでのみ読み込み
case $- in
  *i*) ;;
    *) return;;
esac

# oh-my-bash auto installation
if [ -n "$BASH_VERSION" ]; then
  [[ $- != *i* ]] && return

  # if already installed, skip installation
  if [ ! -d "$HOME/.oh-my-bash" ]; then
    echo "Oh My Bash not found. Installing..."

    if command -v wget >/dev/null 2>&1; then
      bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
    elif command -v curl >/dev/null 2>&1; then
      bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
    else
      echo "wget or curl is required to install Oh My Bash."
    fi
  fi
fi

# Path to oh-my-bash
export OSH='/home/yokogawa/.oh-my-bash'

# oh-my-bash theme
OSH_THEME="90210"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# enable command auto-correction.
ENABLE_CORRECTION="true"

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

# change timestamp format.
HIST_STAMPS='yyyy/mm/dd + time'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
OMB_DEFAULT_ALIASES="check"

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable

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
# aliases=(
#  general
# )

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

# If you want to reduce the initialization cost of the "tput" command to
# initialize color escape sequences, you can uncomment the following setting.
# This disables the use of the "tput" command, and the escape sequences are
# initialized to be the ANSI version:
#
#OMB_TERM_USE_TPUT=no

source "$OSH"/oh-my-bash.sh

# shell共通設定のロード
[ -f "$HOME/rc" ] && source "$HOME/rc"
