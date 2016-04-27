filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("$HOME/.vim/bundle")

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" ==== General ===
" Git integration
Plugin 'tpope/vim-fugitive'

" Fast navigation with <leader>t
Plugin 'git://git.wincent.com/command-t.git'

" vim-airline instead of powerline
Plugin 'vim-airline/vim-airline'

" Themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'

" Editorconfig
Plugin 'editorconfig/editorconfig-vim'

" NerdTree
Plugin 'scrooloose/nerdtree'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" Syntax Highlighting for many many languages
Plugin 'scrooloose/syntastic'

" Tmux-Vim integration
Plugin 'christoomey/vim-tmux-navigator'

" Whitespace highliting
Plugin 'ntpeters/vim-better-whitespace'

" ==== Git ====
" Shows Git diff in gutter
Plugin 'airblade/vim-gitgutter'

" ==== C/C++ ====
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" ==== Python ====
" Python-mode
Plugin 'klen/python-mode'

" ==== Web (HTML, CSS, JS) ====
" Emmet
Plugin 'mattn/emmet-vim'

" Improved support for JavaScript indentation and syntax
Plugin 'pangloss/vim-javascript'

" Improved parsing for JavaScript codes, which is used with YCM
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
