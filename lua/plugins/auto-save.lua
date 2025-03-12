return {
    -- 自动保存
    {
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {}
        end,
    },
}
