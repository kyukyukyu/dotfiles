set nocompatible              " be iMproved, required

" Load plugins
if filereadable(expand("$XDG_CONFIG_HOME/nvim/plug.vim"))
  source $XDG_CONFIG_HOME/nvim/plug.vim
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

" I will miss you, Command-T. But, it's the era of fzf!
map <Leader>t :FZF<CR>

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
let g:ycm_filetype_whitelist={'c': 1, 'cpp': 1, 'javascript': 1, 'python': 1}

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

" Turn off Rope's code completion used in python-mode. By doing this, Jedi will
" be used by YCM.
let g:pymode_rope_completion = 0

" Syntastic checkers
let g:syntastic_haskell_checkers = ["ghc_mod"]
let g:syntastic_javascript_checkers = ["eslint"]

" Command-T file scanner
let g:CommandTFileScanner="git"
" Command-T exclusion list
let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore+=",*.o,*.obj"
let g:CommandTWildIgnore+=",**/bower_components/*,**/node_modules/*"
