local utils = require "utils"

vim.g.mapleader = " "

local opts = {
  nnoremap = { noremap = true, silent = true },
  inoremap = { noremap = true, silent = true },
  vnoremap = { noremap = true, silent = true },
  xnoremap = { noremap = true, silent = true },
  tnoremap = { noremap = true, silent = true },
}

local default_keys = {
  insert_mode = { },

  normal_mode = {
    -- Better window movement
    { "<C-h>", "<C-w>h" },
    { "<C-j>", "<C-w>j" },
    { "<C-k>", "<C-w>k" },
    { "<C-l>", "<C-w>l" },

    -- Resize with arrows
    { "<C-Up>", ":resize +20<CR>" },
    { "<C-Down>", ":resize -20<CR>" },
    { "<C-Left>", ":vertical resize -20<CR>" },
    { "<C-Right>", ":vertical resize +20<CR>" },

    { "|", "<C-W><C-V>" },  -- easy vsplit
    { "_", "<C-W><C-S>" },  -- easy hsplit

    { "<C-q>", "<C-W><C-Q>" },  -- easy quit

    -- Telescope
    { "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>" },
    { "<leader>gg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
    { "<leader>rr", "<cmd>lua require('telescope.builtin').oldfiles()<cr>"},

    -- NvimTree
    { "<C-b>", ":NvimTreeToggle<CR>" },
    -- { "<leader>t", "<cmd>lua require('config.nvimtree').toggle_tree()<cr>" },
    { "<leader>ff", ":NvimTreeFindFile<CR>"},

    { "<leader>r", ":NvimTreeRefresh<CR>"},

    --nvim-dap-ui
    { '<leader>d', '<cmd>lua require("dapui").toggle()<CR>' },

-- mapping for vim-test
    {'<leader>tn', ':TestNearest<CR>'},
    {'<leader>tf', ':TestFile<CR>'},
    {'<leader>ts', ':TestSuite<CR>'},
    {'<leader>tl', ':TestLast<CR>'},
    {'<leader>tv', ':TestVisit<CR>'},

    {'<leader>x', ':close<CR>'},

    -- Some fugitive keybindings
    {'<leader>g', ':G<CR>'},
    {'<leader>gh', ':diffget//2<CR>'},
    {'<leader>gl', ':diffget//3<CR>'}
  },

  term_mode = {
    -- Terminal window navigation
    { "<C-h>", "<C-\\><C-N><C-w>h" },
    { "<C-j>", "<C-\\><C-N><C-w>j" },
    { "<C-k>", "<C-\\><C-N><C-w>k" },
    { "<C-l>", "<C-\\><C-N><C-w>l" },

    -- Terminal resize
    { "<Tab>k", "<C-\\><C-N>z70<CR>i" },
    { "<Tab>j", "<C-\\><C-N>z20<CR>i" },

    -- ToggleTerm
    -- { "<tab><tab>", "<C-\\><C-n>:ToggleTermCloseAll<CR>" },
    -- { "<leader>2", "<C-\\><C-n>:2ToggleTerm<CR>" },
    -- { "<leader>3", "<C-\\><C-n>:3ToggleTerm<CR>" },
    -- { "<leader>4", "<C-\\><C-n>:4ToggleTerm<CR>" },
  },

  visual_mode = {
    -- Better indenting\
    { "<", "<gv" },
    { ">", ">gv" },

  },

  visual_block_mode = {
    -- Move selected line / block of text in visual mode
    { "K", ":move '<-2<CR>gv-gv" },
    { "J", ":move '>+1<CR>gv-gv" },

  },
}

utils.add_keymap_normal_mode(opts.nnoremap, default_keys["normal_mode"])
utils.add_keymap_insert_mode(opts.inoremap, default_keys["insert_mode"])
utils.add_keymap_visual_mode(opts.vnoremap, default_keys["visual_mode"])
utils.add_keymap_visual_block_mode(opts.xnoremap, default_keys["visual_block_mode"])
utils.add_keymap_term_mode(opts.tnoremap , default_keys["term_mode"])
