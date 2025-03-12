return {
    {
        "danymat/neogen",
        config = true,
        keys = {
            {
                "<leader>'",
                function()
                    require("neogen").generate()
                end,
                desc = "Auto Doxygen",
            },
        },
    },
}
