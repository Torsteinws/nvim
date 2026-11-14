return {
    --

    -- Themes that looks nice:
    --
    -- Dark mode:
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
    -- Light mode:
    --  - github_light_high_contrast
    --  - cyberdream-light
    --  - github_light_tritanipia
    --  - vscode
    --  - cattpuccin-latte
    --  - tokyonight
    --  - rose-pine
    --  -
    --  -
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
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        opts = {

            colors = {
                dark = {
                    -- bg = "#0000ff",
                    --
                    -- bg_highlight = "#3c4048",
                    -- bg_alt = "#1e2124",

                    -- w:48.24
                    -- grey = "#7b8496",
                    -- w: 55%
                    -- grey = "#8c8f96",
                    -- w: 65%
                    grey = "#9c9c9c",

                    -- w: 23.53, l: 25.88
                    -- bg_highlight = "#3c4048",
                    -- -- w: 18.00
                    -- bg_highlight = "#2e3748",
                    -- l: 18.00
                    -- bg_highlight = "#2a2d32",
                    -- l: 16.00
                    bg_highlight = "#25282d",
                    -- l: 14.00
                    -- bg_highlight = "#202327",
                },
            },
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- flavour = "latte",
        background = {
            dark = "auto",
            light = "latte",
        },
        priority = 1001,
        config = function()
            -- vim.cmd("colorscheme catppuccin-mocha")
            -- vim.cmd("colorscheme catppuccin-macchiato")
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        -- config = function()
        --     require("github-theme").setup({
        --         -- ...
        --     })
        --
        --     vim.cmd("colorscheme github_dark")
        -- end,
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
    -- {
    --     "olimorris/onedarkpro.nvim",
    --     priority = 1000, -- Ensure it loadsfirst
    --     config = function()
    --         -- vim.cmd("colorscheme onedark")
    --         -- vim.cmd("colorscheme onelight")
    --         -- vim.cmd("colorscheme onedark_vivid")
    --         -- vim.cmd("colorscheme onedark_dark")
    --         -- vim.cmd("colorscheme vaporwave")
    --     end,
    -- },
    -- {
    --     -- Looks nice
    --     "rockyzhang24/arctic.nvim",
    --     dependencies = { "rktjmp/lush.nvim" },
    --     name = "arctic",
    --     branch = "v2",
    --     priority = 1000,
    --     config = function()
    --         -- vim.cmd("colorscheme arctic")
    --     end,
    -- },
    -- {
    --     "AlexvZyl/nordic.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- require("nordic").load()
    --         -- vim.cmd("colorscheme nordic")
    --     end,
    -- },
    -- {
    --     "vague-theme/vague.nvim",
    --     lazy = false, -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other plugins
    --     config = function()
    --         -- NOTE: you do not need to call setup if you don't want to.
    --
    --         --     -- optional configuration here
    --         -- })
    --         -- vim.cmd("colorscheme vague")
    --     end,
    -- },
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    -- },
    -- {
    --     {
    --         "nyoom-engineering/oxocarbon.nvim",
    --         priority = 1000,
    --         -- Add in any other configuration;
    --         --   event = foo,
    --         --   config = bar
    --         --   end,
    --     },
    -- },
}
