"""Plugins
	call plug#begin('~/.config/nvim/plugins')
		Plug 'mhinz/vim-startify'
		Plug 'tpope/vim-commentary'
		Plug 'SirVer/ultisnips'
		Plug 'junegunn/rainbow_parentheses.vim'
		Plug 'jiangmiao/auto-pairs'
		Plug 'iamcco/markdown-preview.nvim'
		Plug 'preservim/tagbar'
		if has("nvim")
			Plug 'neovim/nvim-lspconfig'
			Plug 'hrsh7th/nvim-compe'
			Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		endif
	call plug#end()

"General settings
	syntax enable
	set encoding=utf-8
	set fileencoding=utf-8
	set ruler
	set nocompatible
	set number relativenumber
	set cmdheight=2
	set splitbelow splitright
	set conceallevel=0
	set tabstop=4
	set shiftwidth=4
	set noexpandtab
	set laststatus=0
	colorscheme moriarty
	set background=dark
	set showtabline=2
	set noswapfile
	set completeopt-=preview

"Keymap
	source ~/.config/nvim/modules/keymap.vim

"Parentheses
	source ~/.config/nvim/modules/rainbow_parentheses.vim

"Python
	let g:python3_host_prog="/bin/python3"

"Start file
	source ~/.config/nvim/modules/startify.vim	

"Snippet
	source ~/.config/nvim/modules/snippet.vim

"Markdown
	source ~/.config/nvim/modules/markdown.vim

"language
	autocmd FileType sh setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 
	autocmd FileType markdown setlocal conceallevel=0 list
	autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
	autocmd FileType txt setlocal nowrap nonu
	
"Lsp
lua << EOF
require'lspconfig'.pyright.setup{}
EOF
