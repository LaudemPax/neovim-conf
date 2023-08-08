local saga = require('lspsaga')

saga.setup({})
vim.keymap.set("n", "<C-r>", "<cmd>Lspsaga rename<cr>")
