set nocompatible              " be iMproved, required

" Load plugins
if filereadable(expand("$VIM/vundle.vim"))
  source $VIM/vundle.vim
endif

syntax on
set cindent
set encoding=utf-8
set number

"" Powerline installed with pip
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" vim-airline
set laststatus=2        " Always display the statusline in all windows
let g:airline_powerline_fonts=1     " intergrating with powerline fonts
let g:airline#extensions#tabline#enabled=1

" Soft tab
set tabstop=4
set shiftwidth=4
set expandtab

"indent with two spaces when c++
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2

"leader key
let mapleader = ","

" Column layout
set colorcolumn=80

"Enable Rope support on pymode
"let g:pymode_rope = 1

" NERDTreeToggle keymap
map <F2> :NERDTreeToggle<CR>

" Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

if has("gui_running")
    "Font
    set guifont=Menlo\ for\ Powerline:h14
endif

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif

" youcompleteme: filetype whitelist
let g:ycm_filetype_whitelist={'c': 1, 'cpp': 1, 'javascript': 1}

" youcompleteme: get rid of annoying preview pane
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

" Syntastic recommended options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Do not check syntax of Python code using Syntastic
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ["python"] }

" Syntastic checkers
let g:syntastic_haskell_checkers = ["ghc_mod"]

" Command-T file scanner
let g:CommandTFileScanner="git"
" Command-T exclusion list
let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore+=",*.o,*.obj"
let g:CommandTWildIgnore+=",**/bower_components/*,**/node_modules/*"
