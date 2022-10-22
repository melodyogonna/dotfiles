return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}
  use {'stevearc/dressing.nvim'}
  use {'kyazdani42/nvim-tree.lua', config = require'config/nvimtree'}
  use 'tpope/vim-dispatch'
  use 'vim-test/vim-test'
  use 'machakann/vim-sandwich'
  use {'fatih/vim-go', run = ':GoUpdateBinaries' }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require'config/treesitter'}
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'tjdevries/colorbuddy.nvim'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use {'L3MON4D3/LuaSnip', requires='hrsh7th/nvim-cmp'}
  use {'hrsh7th/nvim-cmp', requires = {{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'saadparwaiz1/cmp_luasnip'}}}
  use "rafamadriz/friendly-snippets"
  use 'neovim/nvim-lspconfig'
  use 'sbdchd/neoformat'
  use 'jiangmiao/auto-pairs'
  use 'wakatime/vim-wakatime'
  use 'mfussenegger/nvim-dap'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use { "nvim-neorg/neorg", requires = "nvim-lua/plenary.nvim"}
end)

