return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local gitsigns = require("gitsigns")
            gitsigns.setup()

            vim.keymap.set("n", "<leader>ga", gitsigns.stage_hunk, { desc = "Add hunk" })

            vim.keymap.set("v", "<leader>ga", function()
                gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "Add hunk" })

            vim.keymap.set("v", "<leader>hr", function()
                gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "Reset hunk" })

            vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview hunk" })
            vim.keymap.set("n", "<leader>gi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })
            -- vim.keymap.set()
        end,
    },
}
