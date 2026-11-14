-- Normal mode: Tab to indent, Shift+Tab to unindent
vim.keymap.set("n", "<C-i>", "<C-i>", { desc = "Jump forward" })
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Unindent line" })

-- Visual mode: Tab to indent, Shift+Tab to unindent (stay in visual mode)
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

-- Save all buffers
vim.keymap.set({ "n", "i", "v", "x" }, "<C-S-s>", "<cmd>wa<CR>", { desc = "Save all buffers" })

-- Visual select the last pasted text
vim.keymap.set("n", "gp", "`[v`]", { desc = "Select last pasted text" })

-- vim.keymap.set({ "n", "v" }, "d", '"2d')
-- vim.keymap.set({ "n", "v" }, "D", '"2D')
vim.keymap.set({ "n", "v" }, "c", '"2c')
vim.keymap.set({ "n", "v" }, "C", '"2C')
-- Swap p and P in visual mode
-- vim.keymap.set("v", "p", "P")
-- vim.keymap.set("v", "P", "p")

-- Smart navigate between nvim and zellij splits
-- https://github.com/mrjones2014/smart-splits.nvim
local smartSplits = require("smart-splits")
-- resizing splits
--    these keymaps will also accept a range,
--    for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
vim.keymap.set("n", "<C-A-h>", smartSplits.resize_left)
vim.keymap.set("n", "<C-A-j>", smartSplits.resize_down)
vim.keymap.set("n", "<C-A-k>", smartSplits.resize_up)
vim.keymap.set("n", "<C-A-l>", smartSplits.resize_right)
-- moving between splits
vim.keymap.set("n", "<C-h>", smartSplits.move_cursor_left)
vim.keymap.set("n", "<C-j>", smartSplits.move_cursor_down)
vim.keymap.set("n", "<C-k>", smartSplits.move_cursor_up)
vim.keymap.set("n", "<C-l>", smartSplits.move_cursor_right)
vim.keymap.set("n", "<C-\\>", smartSplits.move_cursor_previous)

vim.keymap.set("n", "<leader>gd", "<cmd>CodeDiff<CR>", { desc = "Diff index" })
vim.keymap.set("n", "<leader>gD", "<cmd>CodeDiff master<CR>", { desc = "Diff master" })
vim.keymap.set("n", "<leader>gf", "<cmd>CodeDiff<CR>", { desc = "Diff current file" })
vim.keymap.set("n", "<leader>gF", "<cmd>CodeDiff history %<CR>", { desc = "Current file history" })
vim.keymap.set("n", "<leader>gL", "<cmd>CodeDiff history<CR>", { desc = "History" })
vim.keymap.set("v", "<leader>gd", "<cmd>'<,'>CodeDiff history<CR>", { desc = "Diff selection" })
