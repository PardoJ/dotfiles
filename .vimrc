"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   CONFIGURATION

set nocompatible
syntax on
filetype plugin indent on

""""""""""""""""""""""""""""""""""
" BORING
""""""""""""""""""""""""""""""""""
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" set scrolloff=999
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""""
" KEYS BINDING
""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""""""
" ALIAS
""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark

""""""""""""""""""""""""""""""""""
" COMMAND BAR
""""""""""""""""""""""""""""""""""
set ruler
set cmdheight=2
set laststatus=2

""""""""""""""""""""""""""""""""""
" LINES NUMBERS
""""""""""""""""""""""""""""""""""
set relativenumber
set number
set foldcolumn=1

""""""""""""""""""""""""""""""""""
" FILES ENCODING
""""""""""""""""""""""""""""""""""
set encoding=utf8
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""
" TABS
""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

""""""""""""""""""""""""""""""""""
" INDENTS
""""""""""""""""""""""""""""""""""
set foldmethod=indent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""
" FILES HANDLING & BACKUPS
""""""""""""""""""""""""""""""""""
set autoread
set nobackup
set nowb
set noswapfile
" A buffer becomes hidden when it is abandoned
set hid

""""""""""""""""""""""""""""""""""
" LINE BREAK
""""""""""""""""""""""""""""""""""
set lbr
set tw=500

""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch 
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

""""""""""""""""""""""""""""""""""
" BRACKETS
""""""""""""""""""""""""""""""""""
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

""""""""""""""""""""""""""""""""""
" TIPS
""""""""""""""""""""""""""""""""""
" FuzzyFileFinder ;)
set path+=**
set wildmenu
" :find to find a file with <tab> or wildcard in name
" :ls to list buffers
" :b to switch to buffer with a file name <tab> and wildcard included.

command! MakeTags !ctags -R .
" ^] to jump to tag under cursor
" g^] for ambigous tags
" ^t to jump back up to the tag stack

" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^] for CTAGS only
" - ^n for anything making hit
"   THEN you can use ^n and ^p to navigate

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     PLUGINS
""" PATHOGEN
execute pathogen#infect()
colorscheme solarized

""" AIRLINE
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

""" AIRLINE THEME
let g:airline_theme='solarized'
set laststatus=2

""" TMUXLINE
let g:airline#extensions#tmuxline#enabled = 0
" :Tmuxline airline crosshair

""" CTRLP.VIM
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

""" NERDTREE
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>

""" SYNTAXIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
