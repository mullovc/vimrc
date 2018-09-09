" PLUGINS

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeFocus' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'

" use ag as grep-tool if installed
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ackprg = 'ag --vimgrep'
endif


let cpp_ide=$VIM_CPP_IDE
if cpp_ide == "1"
	Plug 'Valloric/YouCompleteMe'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
	Plug 'sirver/UltiSnips'
	Plug 'honza/vim-snippets'

    " use <Ctrl-N> and <Ctrl-P> for YCM so <TAB> can be used for UltiSnips
	let g:ycm_key_list_select_completion = []
	let g:ycm_key_list_previous_completion = []
	let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'
endif

call plug#end()
