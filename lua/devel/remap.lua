vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Define a custom command that copies the entire buffer to the clipboard
vim.cmd([[
  command! CopyWholeFileToClipboard :%yank + | echom 'Entire file copied to clipboard'
]])
-- Map a key to trigger the custom command
vim.api.nvim_set_keymap('n', '<leader>ca', ':CopyWholeFileToClipboard<CR>', { noremap = true, silent = true })

-- remap save file to ctrl+s
vim.cmd([[
  command! SaveFile :w
]])

vim.api.nvim_set_keymap('n', '<C-s>', ':SaveFile <CR>', { noremap = true, silent = true })

-- remap move lines up  or down
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>', { noremap = true, silent = true })

-- Remap Ctrl+U to Ctrl+Up
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-U>', { noremap = true })

-- Remap Ctrl+D to Ctrl+Down
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-D>', { noremap = true })

-- Remap leader + fr to format
vim.api.nvim_set_keymap('v', '<leader>fr', '=', { noremap = true })
