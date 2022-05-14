lua require'telescope'.load_extension('project')

nnoremap <C-p> :lua require'telescope'.extensions.project.project{}<CR>

nnoremap <leader>/ :Telescope current_buffer_fuzzy_find<CR>
