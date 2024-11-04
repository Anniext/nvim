require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- normal
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<Esc>", { desc = "CMD enter command mode" })
map("n", "U", "<C-r>", { desc = "C" })
map("n", "<leader>;", "<cmd> Nvdash <cr>", { desc = "Nvdash" })
map("n", "vh", "<cmd> split <cr>", { desc = "Nvdash" })
map("n", "vg", "<cmd> vsplit <cr>", { desc = "Nvdash" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<leader>ww", "<cmd> w <cr>", { desc = "Save" })
map("n", "<leader>q", function()
    require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
map("n", "<S-l>", function()
    require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "<S-h>", function()
    require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- dap
map("n", "<F5>", function()
    require("dap").continue()
end)
map("n", "<F10>", function()
    require("dap").step_over()
end)
map("n", "<F11>", function()
    require("dap").step_into()
end)
map("n", "<F12>", function()
    require("dap").step_out()
end)
map("n", "<leader>b", function()
    require("dap").toggle_breakpoint()
end)

-- git
map("n", "<leader>lr", function()
    require("telescope").extensions.lazygit.lazygit()
end, { desc = "Git Repo" })

-- cellular
map("n", "<leader>tr", function()
    require("cellular-automaton").start_animation "make_it_rain"
end, { desc = "make_it_rain" })
map("n", "<leader>tl", function()
    require("cellular-automaton").start_animation "game_of_life"
end, { desc = "game_of_life" })

-- go

map("n", "<leader>gg", "<cmd> GoGenerate <cr>", { desc = "go generate" })
map("n", "<leader>gf", "<cmd> GoFillStruct <cr>", { desc = "go fill struct" })
map("n", "<leader>gc", "<cmd> GoCmt<cr>", { desc = "go add cmt" })
map("n", "<leader>ge", "<cmd> GoIfErr<cr>", { desc = "go if err" })
map("n", "<leader>gm", "<cmd> GoModTidy<cr>", { desc = "go mod tidy" })
map("n", "<leader>go", "<cmd> GoPkgOutline<cr>", { desc = "go pkg outline" })
map("n", "<leader>gi", "<cmd> GoToggleInlay<cr>", { desc = "go toggle inlay" })

--goplay
--
vim.api.nvim_set_keymap("n", "<leader>gpt", ":GPToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gpe", ":GPExec<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gpf", ":GPExecFile<CR>", { noremap = true, silent = true })
