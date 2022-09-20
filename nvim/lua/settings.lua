UNDO_DIR = os.getenv "HOME" .. "/.nvim/undodir/"

vim.cmd "syntax on"
vim.opt.errorbells = false
vim.opt.tabstop = 2 
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = UNDO_DIR
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.textwidth = 79
vim.opt.colorcolumn = '80'
vim.opt.cmdheight = 2
vim.opt.updatetime = 750
vim.opt.encoding = "utf-8"
vim.opt.fileformat = 'unix'
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.mouse = 'a'
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = 'menuone,noinsert'
vim.opt.termguicolors = true

vim.cmd "autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab"
