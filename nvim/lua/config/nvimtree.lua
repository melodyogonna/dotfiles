return function()
require'nvim-tree'.setup{
  open_on_setup = true,

  view = {
    width = 40,
    side = "right",
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
    dotfiles = false,
    exclude = {"__pycache__", ".git", "node_modules", ".cache"}
  },
}
end

