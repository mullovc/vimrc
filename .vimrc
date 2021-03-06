filetype on
filetype indent on
filetype plugin on

syntax on
set autoindent

" enable omnicompletion
set omnifunc=syntaxcomplete#Complete

set background=dark

set number
set relativenumber

" highlight search
set hls
" show the next match while entering a search
set incsearch
" ignore case
set ignorecase
" ignore case only when lower letter search expression
set smartcase

set lbr

" show command in bottom bar
set showcmd

" number of visual spaces per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are spaces
set expandtab
set shiftwidth=4

set virtualedit=block

" open new vertical split to the right
set splitright
" open new horizontal split on the bottom
set splitbelow

" when a bracket is inserted, briefly jump to the matching one
set showmatch
set matchtime=3

" highlight current line with dark grey background
highlight CursorLine cterm=None ctermbg=0
set cursorline

" find out what this does
" set nocompatible

" redraw only when we need to
set lazyredraw

" recursive search in subdirectories for find command
set path+=**

" show all candidates for tab-completion
set wildmenu

" insert single character after cursor
" nnoremap <Space> a_<Esc>r

" newline without entering insert mode
nmap <CR> o<ESC>
nmap <S-Enter> O<ESC>

" change working directory to currently open file's directory
command CDCURR cd %:p:h
" on command line expand %% to open file's directory
cabbr <expr> %% expand('%:p:h')

if filereadable($HOME . "/.vim/profile.vim")
	source ~/.vim/profile.vim
endif
