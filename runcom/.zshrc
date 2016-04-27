# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip python pyenv brew npm)

source $ZSH/oh-my-zsh.sh

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# OS
if [ "$(uname -s)" = "Darwin" ]; then
  OS="OSX"
else
  OS=$(uname -s)
fi

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)
READLINK=$(which greadlink || which readlink)
# CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  # SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/system/.{functions,path,env,alias,completion,grep,prompt,nvm,rvm,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if [ "$OS" = "OSX" ]; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}.osx; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# Clean up
unset READLINK DOTFILE

# Export
export OS DOTFILES_DIR

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh

# pyenv autocompletion
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
