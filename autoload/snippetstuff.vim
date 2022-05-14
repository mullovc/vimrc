function! snippetstuff#UseVsnip()
    packadd vim-vsnip
    packadd friendly-snippets

    " Expand
    imap <expr> <Tab> vsnip#expandable()  ? '<Plug>(vsnip-expand)'    : '<Tab>'
    smap <expr> <Tab> vsnip#expandable()  ? '<Plug>(vsnip-expand)'    : '<Tab>'

    " Jump forward or backward
    imap <expr> <C-j> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<C-j>'
    smap <expr> <C-j> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<C-j>'
    imap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<C-k>'
    smap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<C-k>'
endfunction

function! snippetstuff#UseUltisnips()
    packadd UltiSnips
    packadd vim-snippets

    " open snippets for current filetype in new split
    nnoremap <leader>eu :execute("vsplit /usr/share/vim/vimfiles/snippets/" . &filetype . ".snippets")<CR>

    " list available snippets
    command! ListAvailableSnippets echo UltiSnips#SnippetsInCurrentScope()

    " snippets in completion menu
    function! SnippetComplete()
        call complete(col('.'), keys(UltiSnips#SnippetsInCurrentScope()))
        return ''
    endfunction
    imap <C-X><C-S> <C-R>=SnippetComplete()<CR>
endfunction
