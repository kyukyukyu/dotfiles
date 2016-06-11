VIM_PLUG_DIR=~/.config/nvim/plugged

# Install/update vim-plug.
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install the packages.
nvim +PlugInstall +qall

# Compile YouCompleteMe.
cd "$VIM_PLUG_DIR/YouCompleteMe" && ./install.py --clang-completer

cd -
