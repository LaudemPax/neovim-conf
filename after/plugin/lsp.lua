local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    -- markdown
    "marksman",
    -- python
    "jedi_language_server",
    -- for lua
    "lua_ls",
    "cmake",
    "bashls",
    "jdtls"
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)


-- key remap
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
