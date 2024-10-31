require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<Esc>", { desc = "CMD enter command mode" })
map("n", "U", "<C-r>", { desc = "C" })
map("n", "<leader>;", "<cmd> Nvdash <cr>", { desc = "Nvdash" })
map("n", "vh", "<cmd> split <cr>", { desc = "Nvdash" })
map("n", "vg", "<cmd> vsplit <cr>", { desc = "Nvdash" })
map({ "n", "i", "v" }, "<D-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<leader>w", "<cmd> w <cr>")

map("n", "<leader>q", function()
    require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
map("n", "<S-h>", function()
    require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "<S-l>", function()
    require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

map("n", "<F5>", function() require("dap").continue() end)
map("n", "<F10>", function() require("dap").step_over() end)
map("n", "<F11>", function() require("dap").step_into() end)
map("n", "<F12>", function() require("dap").step_out() end)
map("n", "<leader>b", function() require("dap").toggle_breakpoint() end)
