-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto-switch colorscheme when background changes
local themes = require("config.themes")

vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
        if vim.o.background == "light" then
            vim.cmd.colorscheme(themes.light)
        else
            vim.cmd.colorscheme(themes.dark)
        end
    end,
})

-- Toggle snacks scroll when codediff opens/closes
-- Workaround for bug: https://github.com/esmuellert/codediff.nvim/issues/519
vim.api.nvim_create_autocmd("User", {
    pattern = "CodeDiffOpen",
    callback = function()
        require("snacks").scroll.disable()
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "CodeDiffClose",
    callback = function()
        require("snacks").scroll.enable()
    end,
})

