" use ripgrep as external grep program
set grepprg=rg\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m


" grep through currently open file
"command! -nargs=1 Bufgrep silent execute 'grep! <q-args> ' . shellescape(expand('%')) | botright copen
command! -nargs=1 Bufgrep
            \  silent execute "grep! "
            \  . shellescape(expand('<args>')) . ' ' . shellescape(expand('%'))
            \  | botright copen
"nnoremap <leader>/ :Bufgrep<Space>

" search word under the cursor in current file
command! -nargs=0 Stargrep
            \  silent execute "grep! " .
            \  shellescape(expand('<cword>')) . ' ' . shellescape(expand('%'))
            \  | botright copen
nnoremap <leader>* :Stargrep<CR>

"" search and display quickfix window
"" TODO consider escaping
"command! -nargs=+ Ag silent grep! <args> | botright copen
