filetype on
filetype indent on
filetype plugin on

syntax on
set autoindent

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

set showcmd

set tabstop=4
set shiftwidth=4

set virtualedit=block

" when a bracket is inserted, briefly jump to the matching one
set showmatch
set matchtime=3

" find out what this does
" set nocompatible

" recursive search in subdirectories for find command
set path+=**

" show all candidates for tab-completion
set wildmenu

" insert single character after cursor
nnoremap <Space> a_<Esc>r
" newline without entering insert mode
nmap <CR> o<ESC>
nmap <S-Enter> O<ESC>

" change working directory to currently open file's directory
command CDCURR cd %:p:h
" on command line expand %% to open file's directory
cabbr <expr> %% expand('%:p:h')

" PLUGINS

" pathogen (plugin manager)
execute pathogen#infect()
