local saga = require('lspsaga')

saga.setup({})

-- rename
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>")

-- find usages
vim.keymap.set("n", "<leader>fu", "<cmd>Lspsaga finder<cr>")
