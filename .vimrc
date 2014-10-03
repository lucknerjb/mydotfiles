set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

Plugin 'zeis/vim-kolor'

Plugin 'morhetz/gruvbox'

Plugin 'mhinz/vim-signify'

Plugin 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"set nowrap
"set smartindent
"set expandtab
"map Y y$
"set bs=indent
"set hlsearch

"set autoindent
set tabstop=4
set shiftwidth=4
set expandtab "Turn tabs into spaces
"Let's make sure that all the annoying bugs in VI are not displayed in VIM.
set nocompatible
"Let VIM figure out the indentation neede in C-style programs - when it can.
set smartindent
"VIM will show the corresponding opening and closing curly brace, bracket or parentesis.
set showmatch
"Display the status bar at the bottom 
set ruler
"Match words as we type a search string. We may be able to find the word we are looking for before being done typing.
set incsearch
"syntax on
set backspace=indent,eol,start
set number
fixdel
filetype plugin on
"colorscheme railscasts
"syntax enable
"set background=dark
"colorscheme solarized

syntax enable
au BufNewFile,BufRead *.thtml set filetype=php
set background=dark
"colorscheme sorcerer
"colorscheme kolor
"colorscheme twilight256
colorscheme gruvbox

" CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'rw'

set laststatus=2

let g:signify_vcs_list = [ 'svn' ]

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Switch to alternate file
"map <C-Tab> :bnext<cr>
"map <C-S-Tab> :bprevious<cr>
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
map <C-U> :bw<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Click to move cursor
set mouse=a

" Do not clutter working dir with swp files
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Highlight current line
set cul
"hi CursorLine term=none cterm=none ctermbg=4
