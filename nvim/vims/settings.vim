syntax on
filetype plugin indent on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set rnu
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set foldmethod=indent
set foldlevel=99
set textwidth=79
set colorcolumn=80
set cmdheight=2
set encoding=utf-8
set fileformat=unix
set cursorline
set splitbelow
set splitright
set mouse=a
set clipboard=unnamedplus
set completeopt=menuone,noinsert

if (has("termguicolors"))
  set termguicolors
endif

runtime macros/matchit.vim

let mapleader = " "

