local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
  -- javascript/ts
  "tsserver",
  -- eslint
  "eslint",
  -- markdown
  "marksman",
  -- nix
  "nil_ls",
  -- python
  "pyre",
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
