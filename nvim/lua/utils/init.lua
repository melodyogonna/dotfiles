local utils = {}
local lsp_util = require('lspconfig/util')

function utils.add_keymap(mode, opts, keymaps)
  for _, keymap in ipairs(keymaps) do
    vim.api.nvim_set_keymap(mode, keymap[1], keymap[2], opts)
  end
end

function utils.add_keymap_normal_mode(opts, keymaps)
  utils.add_keymap("n", opts, keymaps)
end

function utils.add_keymap_visual_mode(opts, keymaps)
  utils.add_keymap("v", opts, keymaps)
end

function utils.add_keymap_visual_block_mode(opts, keymaps)
  utils.add_keymap("x", opts, keymaps)
end

function utils.add_keymap_insert_mode(opts, keymaps)
  utils.add_keymap("i", opts, keymaps)
end

function utils.add_keymap_term_mode(opts, keymaps)
  utils.add_keymap("t", opts, keymaps)
end

return utils
