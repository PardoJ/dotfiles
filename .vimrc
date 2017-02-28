"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            GENERAL CONFIGURATION
set nocompatible
syntax on
filetype plugin indent on

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   PLUGINS
if has('win32')
    call plug#begin('~/vimfiles/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              PLUGINS CONFIGURATION

""""""""""""""""""""""""""""""""""
" GOYO / LIMELIGHT
""""""""""""""""""""""""""""""""""
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

""""""""""""""""""""""""""""""""""
" BBYE
""""""""""""""""""""""""""""""""""
map <leader>c :Bdelete<cr>

""""""""""""""""""""""""""""""""""
" NERDTREE
""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
set guioptions-=L

""""""""""""""""""""""""""""""""""
" * LINES
""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:tmuxline_powerline_separators = 0
" :Tmuxline lightline full
" :TmuxlineSnapshot ~/.tmux.line

let g:promptline_powerline_symbols = 0
" :PromptlineSnapshot! ~/.bashrc.prompt lightline clear

""""""""""""""""""""""""""""""""""
" SYNTAXIC
""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""
" CTRLP
""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              VANILLIA CONFIGURATION

""""""""""""""""""""""""""""""""""
" GVIM
""""""""""""""""""""""""""""""""""
if has('gui_running')
	set guifont=Inconsolata:h12:cANSI:qDRAFT
	set guioptions=egmt
endif

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
let g:solarized_termcolors=256
colorscheme solarized

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
set nofoldenable

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           EXTERNAL CONFIGURATION
command! MakeTags !ctags -R .
" ^] to jump to tag under cursor
" g^] for ambigous tags
" ^t to jump back up to the tag stack

" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^] for CTAGS only
" - ^n for anything making hit
"   THEN you can use ^n and ^p to navigate

