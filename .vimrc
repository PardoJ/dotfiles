" ==============================================================================
"                              VANILLIA CONFIGURATION
" ==============================================================================

" ******************************************************************************
"                                 VIM IS NOT VI
set nocompatible
syntax on
filetype plugin indent on

set mouse=a

set lazyredraw
" ******************************************************************************
"                                     ALIAS
" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Loop over buffers, close buffers
map <leader>l :bnext<CR>
map <leader>h :bprevious<CR>
map <leader>c :bdelete<CR>

" Edit your configuration with ',e'
if has('win32')
  map <leader>e :e! $HOME/_vimrc<CR>
	autocmd! bufwritepost _vimrc source %
else
  map <leader>e :e! $HOME/.vimrc<CR>
	autocmd! bufwritepost .vimrc source %
endif

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ******************************************************************************
"                                     BORING
" Configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ******************************************************************************
"                                     COLORS
" General colors
set t_Co=256
set background=dark
colo desert

" Mark 80 and 120 lines
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" ******************************************************************************
"                                  STATUSLINE
set statusline=
set statusline +=%1*\ -%n-\ %*                          "buffer number
set statusline +=%5*%{&ff}%*                            "file format
set statusline +=%5*/%{strlen(&fenc)?&fenc:&enc}%*      " File format
set statusline +=%3*\ %y%*                              "file type
set statusline +=%4*\ %<%F%*                            "full path
set statusline +=%2*%m%*                                "modified flag
set statusline +=%1*%=%{v:register}%*                   "current register
set statusline +=%1*%=%5l%*                             "current line
set statusline +=%2*/%L%*                               "total lines
set statusline +=%1*%4v\ %*                             "virtual column number
set statusline +=%2*0x%04B\ %*                          "character under cursor

hi User1 ctermfg=White ctermbg=DarkGray
hi User2 ctermfg=White ctermbg=DarkGray
hi User3 ctermfg=White ctermbg=DarkGray
hi User4 ctermfg=White ctermbg=DarkGray
hi User5 ctermfg=White ctermbg=DarkGray

" ******************************************************************************
"                                  COMMAND BAR
set ruler
set cmdheight=2
set laststatus=2
set noshowcmd

" ******************************************************************************
"                                 LINES NUMBERS
set relativenumber
set number
set foldcolumn=1
set nofoldenable

set scrolljump=5
set scrolloff=10

" ******************************************************************************
"                                FILES ENCODING
set encoding=utf8
set ffs=unix,dos,mac

" ******************************************************************************
"                                    TABS
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" ******************************************************************************
"                                   INDENTS
set foldmethod=indent
set ai                    "Auto indent
set si                    "Smart indent
set nowrap                "Wrap lines

" ******************************************************************************
"                          FILES HANDLING & BACKUPS
set autoread
set nobackup
set nowb
set noswapfile

" A buffer becomes hidden when it is abandoned
set hid

" ******************************************************************************
"                                   COMPLETION
set omnifunc=syntaxcomplete#Complete

" ******************************************************************************
"                                  LINE BREAK
set lbr
set tw=500

" ******************************************************************************
"                                   SEARCH
set ignorecase
set smartcase
set hlsearch
set incsearch 

" Disable highlight when <leader><CR> is pressed
map <silent> <leader><CR> :noh<CR>

" ******************************************************************************
"                                      BRACKETS
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" ******************************************************************************
"                                      TIPS
" FuzzyFileFinder ;)
set path+=**
set wildmenu
" :find to find a file with <tab> or wildcard in name
" :ls to list buffers
" :b to switch to buffer with a file name <tab> and wildcard included.

" ******************************************************************************
"                                       GVIM
if has('gui_running')
  set guifont=Consolas:h10:cANSI:qDRAFT
  set guioptions=egt
  set guioptions-=r
  set guioptions-=l
  set guioptions-=b
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  hi User1 guifg=#eea040 guibg=#222222
  hi User2 guifg=#dd3333 guibg=#222222
  hi User3 guifg=#ff66ff guibg=#222222
  hi User4 guifg=#a0ee40 guibg=#222222
  hi User5 guifg=#eeee40 guibg=#222222
endif

" ==============================================================================
"                                   PLUGINS
" ==============================================================================

if has('win32')
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()

" ==============================================================================
"                              PLUGINS CONFIGURATION
" ==============================================================================

" ******************************************************************************
"                                   GOYO / LIMELIGHT
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" ******************************************************************************
"                                        BBYE
map <leader>c :Bdelete<CR>

" ******************************************************************************
"                                       TAGBAR
nmap <F3> :TagbarToggle<CR>

" ******************************************************************************
"                                      NERDTREE
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=35
map <F2> :NERDTreeToggle<CR>
set guioptions-=L

" ******************************************************************************
"                                      SOLARIZED
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" ******************************************************************************
"                                        LINES
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

set showtabline=2

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" ******************************************************************************
"                                     SYNTAXIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ******************************************************************************
"                                       CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ==============================================================================
"                           EXTERNAL CONFIGURATION
" ==============================================================================

command! MakeTags !ctags -R .
" ^] to jump to tag under cursor
" g^] for ambigous tags
" ^t to jump back up to the tag stack

" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^] for CTAGS only
" - ^n for anything making hit
"   THEN you can use ^n and ^p to navigate

