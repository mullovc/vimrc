function! completionstuff#UseCmp()
    packadd nvim-cmp
    packadd cmp-buffer
    packadd cmp-path
    packadd cmp-nvim-lsp
    packadd cmp-vsnip

    set completeopt=menu,menuone,noselect

    lua <<EOF
    local cmp = require'cmp'
    cmp.setup({
      sources = {
        { name = 'buffer' },
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
      },
      mapping = cmp.mapping.preset.insert(),
    })
EOF
endfunction
