-- https://www.reddit.com/r/neovim/comments/1j9fy2w/diffviewnvim_is_so_underrated/
local function toggle_diffview(cmd)
    if next(require("diffview.lib").views) == nil then
        vim.cmd(cmd)
    else
        vim.cmd("DiffviewClose")
    end
end

return {
    {
        "sindrets/diffview.nvim",
        command = "DiffviewOpen",
        keys = {
            {
                "<leader>gd",
                function()
                    toggle_diffview("DiffviewOpen")
                end,
                desc = "Diff Index",
            },
            {
                "<leader>gD",
                function()
                    toggle_diffview("DiffviewOpen master..HEAD")
                end,
                desc = "Diff master",
            },
            {
                "<leader>gf",
                function()
                    toggle_diffview("DiffviewFileHistory %")
                end,
                desc = "Open diffs for current File",
            },
        },
        opts = function()
            local actions = require("diffview.actions")

            return {
                keymaps = {
                    view = {
                        -- Remap j and k in the view panel
                        { "n", "J", actions.select_next_entry, { desc = "Select next entry" } },
                        { "n", "K", actions.select_prev_entry, { desc = "Select previous entry" } },
                    },
                    file_panel = {
                        -- Remap j and k in the file panel
                        { "n", "J", actions.select_next_entry, { desc = "Select next entry" } },
                        -- { "n", "J", actions.next_entry, { desc = "Select next entry" } },
                        { "n", "K", actions.select_prev_entry, { desc = "Select previous entry" } },
                        -- { "n", "K", actions.prev_entry, { desc = "Select previous entry" } },
                    },
                    file_history_panel = {
                        -- Remap j and k in the file history panel
                        { "n", "J", actions.select_next_entry, { desc = "Select next entry" } },
                        -- { "n", "J", actions.next_entry, { desc = "Select next entry" } },
                        { "n", "K", actions.select_prev_entry, { desc = "Select previous entry" } },
                        -- { "n", "K", actions.prev_entry, { desc = "Select previous entry" } },
                    },
                },
            }
        end,
    },
}
