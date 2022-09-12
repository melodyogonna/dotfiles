return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'airblade/vim-gitgutter'
  use {'kyazdani42/nvim-tree.lua', config = require'config/nvimtree'}
  use 'tpope/vim-dispatch'
  use 'vim-test/vim-test'
  use 'machakann/vim-sandwich'
  use {'fatih/vim-go', run = ':GoUpdateBinaries' }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require'config/treesitter'}
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'norcalli/nvim-colorizer.lua'
  use 'tjdevries/colorbuddy.nvim'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'alvan/vim-closetag'
  use {'L3MON4D3/LuaSnip', requires='hrsh7th/nvim-cmp'}
  use {'hrsh7th/nvim-cmp', requires = {{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'saadparwaiz1/cmp_luasnip'}}}
  use 'neovim/nvim-lspconfig'
  use 'sbdchd/neoformat'
  use 'jiangmiao/auto-pairs'
  use 'wakatime/vim-wakatime'
  use 'andymass/vim-matchup'
  use 'mfussenegger/nvim-dap'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

