function! completionstuff#UseCompe(with_lsp)
    packadd nvim-compe
    set completeopt=menu,menuone,noselect
    inoremap <silent><expr> <C-Space> compe#complete()

    lua << EOF
    require'compe'.setup {
      enabled = true;
      autocomplete = true;
      debug = false;
      min_length = 1;
      preselect = 'enable';
      throttle_time = 80;
      source_timeout = 200;
      resolve_timeout = 800;
      incomplete_delay = 400;
      max_abbr_width = 100;
      max_kind_width = 100;
      max_menu_width = 100;
      documentation = true;
      source = {
        path = true;
        buffer = true;
        calc = true;
        vsnip = true;
        --ultisnips = true;
        nvim_lsp = true;
        --nvim_lua = true;
        --spell = true;
        --tags = true;
        --snippets_nvim = true;
        --treesitter = true;
      };
    }
EOF

"    if a:with_lsp
"        lua << EOF
"        _G.completion_sources = {
"          path = true;
"          buffer = true;
"          calc = true;
"          --vsnip = true;
"          ultisnips = true;
"          nvim_lsp = true;
"          nvim_lua = true;
"          spell = true;
"          tags = true;
"          snippets_nvim = true;
"          treesitter = true;
"        };
"EOF
"    else
"        lua << EOF
"        _G.completion_sources = {
"          path = true;
"          buffer = true;
"          calc = true;
"          ultisnips = true;
"        };
"EOF
"    endif
"
"    lua << EOF
"    require'compe'.setup {
"      enabled = true;
"      autocomplete = true;
"      debug = false;
"      min_length = 1;
"      preselect = 'enable';
"      throttle_time = 80;
"      source_timeout = 200;
"      resolve_timeout = 800;
"      incomplete_delay = 400;
"      max_abbr_width = 100;
"      max_kind_width = 100;
"      max_menu_width = 100;
"      documentation = true;
"      source = _G.completion_sources;
"    }
"EOF
endfunction


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
      }
    })
EOF
endfunction


function! completionstuff#UseCompletionNvim()
    packadd completion-nvim
    lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
    set completeopt=menuone,noinsert,noselect
endfunction
