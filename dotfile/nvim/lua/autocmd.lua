vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]
vim.cmd [[ autocmd FileType help map <buffer>  <Enter> <C-]> ]]
vim.cmd [[ autocmd FileType help map <buffer>  <BS> <C-o> ]]