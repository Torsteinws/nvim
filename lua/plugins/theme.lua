return {
    -- Themes that looks nice
    --  - cattpuccin-mocha
    --  - tokyonight-night
    --  - arctic
    --  - vscode
    --  - onedark_vivid
    --  - onedark_dark
    --  - tokyonight-night
    --  -
    --  -
    --  -
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 999,
        opts = {
            style = "night",
            styles = {
                comment = { italic = false },
                keywords = { italic = false },
                functions = { italic = false },
                variables = { italic = false },
            },
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme catppuccin-mocha")
            -- vim.cmd("colorscheme catppuccin-macchiato")
        end,
    },
    {
        "Mofiqul/vscode.nvim",
        priority = 1000,
        config = function()
            -- require("vscode").setup({
            --     disable_nvimtree_bg = false,
            -- })
            -- vim.cmd("colorscheme vscode")
            -- require("vscode").setup()
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme kanagawa-wave")
            -- vim.cmd("colorscheme kanagawa-dragon")
            -- vim.cmd("colorscheme kanagawa-lotus")
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loadsfirst
        config = function()
            -- vim.cmd("colorscheme onedark")
            -- vim.cmd("colorscheme onelight")
            -- vim.cmd("colorscheme onedark_vivid")
            -- vim.cmd("colorscheme onedark_dark")
            -- vim.cmd("colorscheme vaporwave")
        end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.

            -- require("vague").setup({
            --     -- optional configuration here
            -- })
            -- vim.cmd("colorscheme vague")
        end,
    },
    {
        -- Looks nice
        "rockyzhang24/arctic.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        name = "arctic",
        branch = "v2",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme arctic")
        end,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- require("nordic").load()
            -- vim.cmd("colorscheme nordic")
        end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.

            --     -- optional configuration here
            -- })
            -- vim.cmd("colorscheme vague")
        end,
    },
}
