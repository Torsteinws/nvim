local themes = require("config.themes")

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                if vim.o.background == "light" then
                    -- vim.cmd.colorscheme("cyberdream-light")
                    -- vim.cmd.colorscheme("github_light_high_contrast")

                    vim.cmd.colorscheme(themes.light)
                else
                    vim.cmd.colorscheme(themes.dark)
                end
            end,
        },
    },
}
