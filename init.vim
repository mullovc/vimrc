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

" avoid wrapping a line in the middle of a word
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

" show indicator at line breaks
set showbreak=↪\ 

set virtualedit=block

" disable modeline for security reasons
set nomodeline

" open new vertical split to the right
set splitright
" open new horizontal split on the bottom
set splitbelow

" when a bracket is inserted, briefly jump to the matching one
set showmatch
set matchtime=3

" highlight current line with dark grey background
highlight CursorLine cterm=None ctermbg=236
set cursorline

" recursive search in subdirectories for find command
set path+=**

" show all candidates for tab-completion
set wildmenu
" case insensitive file completion
set wildignorecase

set inccommand=nosplit

set undofile

" ALWAYS use the clipboard for ALL operations (instead of interacting with the
" '+' and/or '*' registers explicitly)
set clipboard+=unnamedplus

" completion
" complete to longest common match instead of first menu entry
set completeopt+=longest

" enable syntax omnicompletion only if a specific plugin does not already
" exist for the current filetype
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \	if &omnifunc == "" |
                \		setlocal omnifunc=syntaxcomplete#Complete |
                \	endif
endif


" mappings
let mapleader = " "
let maplocalleader = "\\"

inoremap jk <ESC>

nnoremap <C-J> gt
nnoremap <C-K> gT
nnoremap <C-H> <C-W><C-h>
nnoremap <C-L> <C-W><C-l>
"nnoremap J gt
"nnoremap K gT
"nnoremap <C-H> <C-W><C-h>
"nnoremap <C-L> <C-W><C-l>
"nnoremap gj J
"nnoremap g<C-J> gj
"nnoremap <C-K> K

" newline without entering insert mode
"nnoremap <C-J> o<ESC>
"nnoremap <C-M> o<ESC>

nnoremap <leader>hl :nohlsearch<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" commands
" change working directory to currently open file's directory
command! CDCURR cd %:p:h


" on command line expand %% to open file's directory
cabbr <expr> %% expand('%:p:h')
