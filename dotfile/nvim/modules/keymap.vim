let g:mapleader=" "
map <leader>t :TagbarToggle<cr>
nnoremap <S-Tab> :tabNext<cr>
nnoremap <Tab> :bnext<cr>
autocmd FileType help nnoremap <buffer> <CR> <C-]>
autocmd FileType help nnoremap <buffer> <BS> <C-T>
nnoremap <leader>ww :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>
autocmd FileType markdown nnoremap <leader>mm :MarkdownPreview<cr>
autocmd FileType markdown nnoremap <leader>ms :MarkdownPreviewStop<cr>

