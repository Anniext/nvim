require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require("go.format").goimports()
    end,
    group = format_sync_grp,
})

require("noice").setup {
    backgroud_colour = "#000000",
    lsp = {
        hover = { enabled = true },
        signature = { enabled = false },

        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
    },
}

require("telescope").load_extension "projects" -- custom/configs/null-ls.lua

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- disable nvim intro
vim.opt.shortmess:append "sI"

vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 100
vim.o.undofile = true

local dap = require "dap"
local dapui = require "dapui"
require("dap-go").setup()
dapui.setup()

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

dap.configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${fileDirname}",
    },
}
dapui.setup {
    elements = {
        { id = "scopes", size = 0.50 },
        { id = "breakpoints", size = 0.50},
        { id = "stacks", size = 0.50 },
        { id = "watches", size = 0.50 },
    },
}
require("nvim-dap-virtual-text").setup()
require("neodev").setup({
    -- add any options here, or leave empty to use the default settings
})

-- then setup your lsp server as usual
local lspconfig = require "lspconfig"

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace",
            },
        },
    },
}
