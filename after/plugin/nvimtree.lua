require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    relativenumber=true,
    side="right"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
      enable = true,
      ignore = false
  }
})


local api = require("nvim-tree.api")

vim.keymap.set('n', '<leader>t', api.tree.toggle)
