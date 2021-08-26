local present, packer = pcall(require, "plugin.packer_init")

if not present then
	return false
end

local use = packer.use

return packer.startup(function()
	use {'wbthomason/packer.nvim'}

	use {'folke/tokyonight.nvim'}

	use {'nvim-lua/plenary.nvim'}

    use {'kyazdani42/nvim-web-devicons'}

    use {'nvim-lua/popup.nvim'}

    use {'preservim/tagbar'}

    use {'liuchengxu/vim-clap'}

	use {'sindrets/diffview.nvim', 
        config = function() require('config.diffview') end}

    use {'glepnir/dashboard-nvim',
        config = function() require('config.dashboard') end}

	use {'lewis6991/gitsigns.nvim', 
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('config.gitsigns') end}

    use {'norcalli/nvim-colorizer.lua', 
        config = function() require('config.colorizer') end}

    use {'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require('config.tree') end}

    use {'severin-lemaignan/vim-minimap',
        config = function() require('config.minimap') end}
    
    use {'ellisonleao/glow.nvim', 
        run = ':GlowInstall'}

    use {'lukas-reineke/indent-blankline.nvim', 
        config = function() require('config.indent') end}

    use {'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function() require('config.todo_comment') end}

    use {'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate',
        config = function() require('config.ts') end}

    use {'hrsh7th/nvim-cmp',
        requires = {'hrsh7th/cmp-nvim-lsp','saadparwaiz1/cmp_luasnip', 'L3MON4D3/LuaSnip', 'hrsh7th/nvim-cmp'},
        config = function() require('config.cmp') end}

    use {'neovim/nvim-lspconfig'}
    use {'onsails/lspkind-nvim'}
    use {'kabouzeid/nvim-lspinstall'}

end)
