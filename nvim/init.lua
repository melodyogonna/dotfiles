require 'settings'
require 'plugins'
require 'lsp'
require 'keymappings'
require 'theme'

local g = vim.g
g["test#strategy"] = "dispatch"

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
