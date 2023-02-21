vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
  use 'nvim-lua/plenary.nvim'
	use 'wbthomason/packer.nvim'

	use {'nvim-telescope/telescope.nvim', tag = '0.1.1'}

  use('folke/tokyonight.nvim')
	use('rose-pine/neovim')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')
  use('CRAG666/code_runner.nvim')
  use('numToStr/Comment.nvim')
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')

  use{'nvim-tree/nvim-tree.lua', requires = ('nvim-tree/nvim-web-devicons')} 

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
end)
