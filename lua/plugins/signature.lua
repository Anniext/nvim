return {
    -- lsp 签名
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {
            bind = true,
            hint_prefix = "🚀 ",
            handler_opts = {
                border = "rounded",
            },
        },
        config = function(_, opts)
            require("lsp_signature").setup(opts)
        end,
    },
}
