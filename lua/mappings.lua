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
map({ "n", "i", "v" }, "<D-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<leader>w", "<cmd> w <cr>", { desc = "Save" })
-- map("n", "<leader>q", function()
--     require("nvchad.tabufline").close_buffer()
-- end, { desc = "buffer close" })

-- map("n", "<S-l>", function()
--     require("nvchad.tabufline").next()
-- end, { desc = "buffer goto next" })
--
-- map("n", "<S-h>", function()
--     require("nvchad.tabufline").prev()
-- end, { desc = "buffer goto prev" })
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


-- barbar
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
map('n', '<leader>q', '<Cmd>BufferClose<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
map('n', '<C-p>',   '<Cmd>BufferPick<CR>', opts)
map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)

-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

