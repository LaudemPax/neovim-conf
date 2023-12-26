local config = {
    cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin") },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

local o = vim.opt_local
o.expandtab = true
o.softtabstop = 8
o.shiftwidth = 8
