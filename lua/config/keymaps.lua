-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here vim.keymap.set("n", "<leader>k", function()
--   print("Hello")
-- end, { desc = "Hello" })

-- local gitsigns = require("gitsigns")
-- vim.keymap.set("m", "<leader>ga", gitsigns.stage_hunk, { desc = "Stage hunk" })

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
