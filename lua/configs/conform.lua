local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        proto = { "buf" },
        go = { "goimports" },
        python = { "autoflake" },
        json = { "biome" },
        yaml = { "prettier" },
        vue = { "prettier" },
        cpp = { "clang_format" },
        typescript = { "prettier" },
        javescript = { "prettier" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
