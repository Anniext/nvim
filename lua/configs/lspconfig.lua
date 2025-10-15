-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local servers = {
    "html",
    "cssls",
    "gopls",
    "pyright",
    "pbls",
    "lua_ls",
    "vuels",
    "ts_ls",
    "jsonls",
    "markdown_oxide",
    "gitlab_ci_ls",
    "dockerls",
    "yamlls",
    -- "rust_analyzer",
}

vim.lsp.enable(servers)

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
