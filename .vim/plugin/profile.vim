let cpp_ide=$VIM_CPP_IDE
if cpp_ide == "1"
	nnoremap gd :YcmCompleter GoTo
	nnoremap gD :YcmCompleter GoToDeclaration
endif
