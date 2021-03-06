call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")

" ==== General ===
" Git integration
Plug 'tpope/vim-fugitive'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" vim-airline instead of powerline
Plug 'vim-airline/vim-airline'

" Themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" NerdTree
Plug 'scrooloose/nerdtree'

" Solarized color scheme
Plug 'altercation/vim-colors-solarized'

" Syntax Highlighting for many many languages
Plug 'scrooloose/syntastic'

" Tmux-Vim integration
" Refer to
" https://github.com/christoomey/vim-tmux-navigator#it-doesnt-work-in-neovim-specifically-c-h
" for key binding issue. This dotfiles configuration defaults to not defining
" another key binding. To resolve this issue when you are using iTerm 2 on
" macOS, follow the instruction from below:
" https://github.com/neovim/neovim/wiki/FAQ#my-ctrl-h-mapping-doesnt-work
Plug 'christoomey/vim-tmux-navigator'

" Whitespace highliting
Plug 'ntpeters/vim-better-whitespace'

" ==== Git ====
" Shows Git diff in gutter
Plug 'airblade/vim-gitgutter'

" ==== C/C++ ====
" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" ==== Python ====
" Python-mode
Plug 'klen/python-mode'

" ==== Web (HTML, CSS, JS) ====
" Emmet
Plug 'mattn/emmet-vim'

" Improved support for JavaScript indentation and syntax
Plug 'pangloss/vim-javascript'

" Improved parsing for JavaScript codes, which is used with YCM
Plug 'marijnh/tern_for_vim'

" Add plugins to &runtimepath
call plug#end()
