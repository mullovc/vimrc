filetype on
filetype indent on
filetype plugin on

syntax on
set autoindent

set number
set relativenumber

" highlight search
set hls
" ignore case
set ic

set lbr

set showcmd

set tabstop=4
set shiftwidth=4

set virtualedit=block

" insert single character after cursor
nnoremap <Space> a_<Esc>r
" newline without entering insert mode
nmap <CR> o<ESC>
nmap <S-Enter> O<ESC>
