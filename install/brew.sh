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
  matplotlib
  maven
  neovim
  nvm
  numpy
  peco
  pyenv
  pyenv-virtualenv
  python
  scipy
  tmux
  tree
  wget
)

brew install "${apps[@]}"

# Remove the linkage of vim binary from MacVim.
[ -L ~/bin/vim ] && rm -f ~/bin/vim

# Link the configuration directory for Neovim.
[ ! -d ~/.config/nvim ] && mkdir -p ~/.config/nvim
conf_files=(init.vim plug.vim)
for cf in "${conf_files[@]}"; do
    [ ! -L ~/.config/nvim/$cf ] && ln -s $DOTFILES_DIR/vim/$cf ~/.config/nvim/$cf
done

# Enable the support for legacy python-vim interface of Vim.
pip2 install neovim

# Run pyenv initialization script.
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
