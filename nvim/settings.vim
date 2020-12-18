syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
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
set encoding=utf-8
set fileformat=unix
set autoindent
set cursorline
set autoread
set splitbelow
set splitright
set mouse=a
set clipboard=unnamedplus
set autochdir

if (has("termguicolors"))
  set termguicolors
endif

runtime macros/matchit.vim

let mapleader = " "
