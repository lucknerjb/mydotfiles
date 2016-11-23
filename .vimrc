"set nowrap
"set smartindent
"set expandtab
"map Y y$
"set bs=indent
"set hlsearch

set nocompatible
filetype plugin off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Ignore certain file types
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/node_modules/*,*/bower_components/*

" Different colorscheme
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

"Plugin 'davidhalter/jedi-vim'

"Plugin 'scrooloose/syntastic'
"    set statusline+=%#warningmsg#
"    set statusline+=%{SyntasticStatuslineFlag()}
"    set statusline+=%*
"
"    let g:syntastic_always_populate_loc_list = 1
"    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 1
"    let g:syntastic_check_on_wq = 0

""""" Code Navigation Plugins =======================
Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
        \ }

Plugin 'kien/ctrlp.vim'

    let g:ctrlp_match_window_bottom = 1    " Show at bottom of window
    let g:ctrlp_working_path_mode = 'ra'   " Our working path is our VCS project or the current directory
    let g:ctrlp_mru_files = 1              " Enable Most Recently Used files feature
    let g:ctrlp_jump_to_buffer = 2         " Jump to tab AND buffer if already open
    let g:ctrlp_open_new_file = 'v'        " open selections in a vertical split
    let g:ctrlp_open_multiple_files = 'vr' " opens multiple selections in vertical splits to the right
    let g:ctrlp_arg_map = 0
    let g:ctrlp_dotfiles = 0               " do not show (.) dotfiles in match list
    let g:ctrlp_showhidden = 0             " do not show hidden files in match list
    let g:ctrlp_split_window = 0
    let g:ctrlp_max_height = 40            " restrict match list to a maxheight of 40
    let g:ctrlp_use_caching = 0            " don't cache, we want new list immediately each time
    let g:ctrlp_max_files = 0              " no restriction on results/file list

    let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
    "if executable('ag')
    "    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "endif
    "let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
    "set wildignore+=*/tmp/*,*/node_modules/**.so,*.swp,*.zip     " Linux/MacOSX
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/node_modules/*
    " Sane Ignore For ctrlp
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$|\.hg$\|\vendor$|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp|node_modules\$',
        \ 'file': '\.exe$\|\.so$\|\.dat$'
    \ }

""""" UI Plugins =======================

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

set laststatus=2
set statusline=%{fugitive#statusline()}
"    let g:airline_theme             = 'powerlineish'
    let g:airline_symbols = {}
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_buffers = 1
    let g:airline#extensions#tabline#show_tabs = 1

    let g:airline_theme='luna'
    let g:airline_powerline_fonts=1
    let g:airline_powerline_fonts = 1
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    "let g:airline_symbols.linenr = '␊ '
    "let g:airline_symbols.linenr = '␤ '
    let g:airline_symbols.linenr = '¶ '
    let g:airline_symbols.branch = '⎇ '
    let g:airline_symbols.paste = 'ρ'
    "let g:airline_paste_symbol = 'Þ'
    "let g:airline_paste_symbol = '∥'

Plugin 'chriskempson/base16-vim' " base16 theme
Plugin 'dandorman/vim-colors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ============================================= Regular vimrc ============================================

""""" UI Tweaks =======================

set cul " highlight current line

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
":autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

:nnoremap <c-j> :bprev<CR>
:nnoremap <c-k> :bnext<CR>
:nnoremap <c-u> :bd<CR>

" Ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
"Let VIM figure out the indentation neede in C-style programs - when it can.
set smartindent
"VIM will show the corresponding opening and closing curly brace, bracket or parentesis.
set showmatch
"Display the status bar at the bottom
set ruler
"Match words as we type a search string. We may be able to find the word we are looking for before being done typing.
set incsearch
syntax on
set backspace=indent,eol,start
fixdel
filetype plugin on
set number

" Line length indicator
" set colorcolumn=99
execute "set colorcolumn=" . join(range(99,335), ',')
hi ColorColumn ctermbg=235 guibg=#2c2d27

" Style vertical dividers
hi VertSplit cterm=none ctermfg=green
"   Found this by trying from 0
hi NonText ctermfg=16
set fillchars=vert:\│



:set exrc
