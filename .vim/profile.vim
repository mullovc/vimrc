" PLUGINS

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeFocus' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


let cpp_ide=$VIM_CPP_IDE
if cpp_ide == "1"
	Plug 'Valloric/YouCompleteMe'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
	Plug 'sirver/UltiSnips'
	Plug 'honza/vim-snippets'

	let g:ycm_key_list_select_completion = []
	let g:ycm_key_list_previous_completion = []
	let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'
endif

call plug#end()
