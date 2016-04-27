BUNDLE_DIR=~/.vim/bundle

# Install/update Vundle.
mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/vundle" || (cd "$BUNDLE_DIR/vundle" && git pull origin master))

# Install bundles.
vim +PluginInstall +qall

# Compile YouCompleteMe.
cd "$BUNDLE_DIR/YouCompleteMe" && ./install.py --clang-completer

cd -

# Compile Command-T.
cd "$BUNDLE_DIR/command-t/ruby/command-t"
ruby extconf.rb
make

cd -
