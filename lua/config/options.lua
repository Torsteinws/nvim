-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.background = "dark"
-- vim.o.background = "light"

vim.opt.autowriteall = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Ensure Prettier uses your global config as fallback
vim.g.prettier_config_precedence = "prefer-file" -- Use project config if it exists, otherwise global
