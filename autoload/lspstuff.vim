function! lspstuff#UseLsp()
    packadd nvim-lspconfig

    if executable('pyright')
        lua require'lspconfig'.pyright.setup{}
    elseif executable('pylsp')
        lua require'lspconfig'.pylsp.setup{}
    endif

    if executable('bash-language-server')
        lua require'lspconfig'.bashls.setup{}
    endif

    augroup lspmappings
        autocmd!
        "autocmd FileType python lua require'lspconfig'.pyright.setup{}
        autocmd FileType python setlocal omnifunc=v:lua.vim.lsp.omnifunc
        autocmd FileType python nnoremap <buffer> <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
        autocmd FileType python nnoremap <buffer> <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
        autocmd FileType python nnoremap <buffer> <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
        autocmd FileType python nnoremap <buffer> <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
        autocmd FileType python nnoremap <buffer> <silent> gK    <cmd>lua vim.lsp.buf.signature_help()<CR>
        autocmd FileType python nnoremap <buffer> <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
        autocmd FileType python nnoremap <buffer> <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
        autocmd FileType python nnoremap <buffer> <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
        autocmd FileType python nnoremap <buffer> <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

        "autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)

        " bash
        "autocmd FileType sh lua require'lspconfig'.bashls.setup{}
        autocmd FileType sh setlocal omnifunc=v:lua.vim.lsp.omnifunc
    augroup END
endfunction
