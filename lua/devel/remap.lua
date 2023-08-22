vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Define a custom command that copies the entire buffer to the clipboard
vim.cmd([[
  command! CopyWholeFileToClipboard :%yank + | echom 'Entire file copied to clipboard'
]])
-- Map a key to trigger the custom command
vim.api.nvim_set_keymap('n', '<leader>ca', ':CopyWholeFileToClipboard<CR>', { noremap = true, silent = true })

