require 'settings'
require 'plugins'
require 'lsp'
require 'keymappings'
require 'theme'
require 'config/dap'
require 'config/lualine'
require 'config.neorg'

require("luasnip.loaders.from_vscode").lazy_load()

local g = vim.g
g["test#strategy"] = "dispatch"

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})


vim.api.nvim_command [[augroup Format]]
vim.api.nvim_command [[autocmd! * <buffer>]]
vim.api.nvim_command [[autocmd BufWritePre <buffer> undojoin | Neoformat]]
vim.api.nvim_command [[augroup END]]
g["neoformat_try_node_exe"] = 1
