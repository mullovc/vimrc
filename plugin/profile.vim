" Tagbar
nnoremap <F8> :TagbarToggle<CR>

call snippetstuff#UseVsnip()
"call snippetstuff#UseUltisnips()

let use_ycm  = $USE_YCM
let use_coc  = $USE_COC
let use_lsp  = $USE_LSP
let use_jedi = $USE_JEDI
let use_cmp  = $USE_CMP

if use_ycm == "1"
    packadd YouCompleteMe

    let g:ycm_key_list_select_completion = []
    let g:ycm_key_list_previous_completion = []
    let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'

    nnoremap gd :YcmCompleter GoTo<CR>
    nnoremap gD :YcmCompleter GoToDeclaration<CR>
elseif use_coc == "1"
    packadd coc.nvim
elseif use_jedi == "1"
    packadd jedi-vim

    autocmd Filetype python setlocal omnifunc=jedi#completions
    let g:jedi#use_splits_not_buffers = "right"
    let g:jedi#popup_select_first = 0
    let g:jedi#completions_command = "<C-N>"
else
    if use_lsp == "1"
        call lspstuff#UseLsp()
    endif

    "call completionstuff#UseCompe(v:false)
    call completionstuff#UseCmp()
endif


lua << EOF
require'nvim-autopairs'.setup{}
-- you need setup cmp first put this after cmp.setup()
require("nvim-autopairs.completion.cmp").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` after select function or method item
  auto_select = true -- automatically select the first item
})
EOF
