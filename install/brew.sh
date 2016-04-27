# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/python
brew update
brew upgrade

# Install packages

apps=(
  coreutils
  cmake
  dockutil
  gcc
  git
  hub
  httpie
  macvim
  matplotlib
  numpy
  peco
  pyenv
  python3
  scipy
  tmux
  tree
  wget
)

brew install "${apps[@]}"

# Link vim binary from MacVim.
ln -s /usr/local/bin/mvim vim

# Run pyenv initialization script.
eval "$(pyenv init -)"
