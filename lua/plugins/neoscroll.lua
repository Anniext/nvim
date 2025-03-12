return {
    -- 丝滑滑动
    {
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup {
                easing = "circular",
            }
        end,
    },
}
