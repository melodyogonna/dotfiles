call plug#begin('~/.nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'
Plug 'vim-test/vim-test'
Plug 'machakann/vim-sandwich'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'wakatime/vim-wakatime'

call plug#end()
