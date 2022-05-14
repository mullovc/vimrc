nnoremap <C-N> :NERDTreeFocus<CR>

if cpp_ide == "1"
	nnoremap gd :YcmCompleter GoTo
	nnoremap gD :YcmCompleter GoToDeclaration
endif
