local saga = require('lspsaga')

saga.setup({})
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>")
