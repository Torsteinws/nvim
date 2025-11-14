return {
    {
        "folke/snacks.nvim",
        ---@type snacks.Config
        opts = {
            explorer = {
                -- your explorer configuration comes here
                -- or leave it empty to use the default settings
            },

            picker = {
                sources = {
                    explorer = {
                        -- https://www.reddit.com/r/neovim/comments/1kbqsdc/snacks_explorer_preview_to_the_right/
                        layout = { preview = "main" },
                    },
                    notifications = {
                        win = {
                            preview = {
                                wo = {
                                    -- https://www.reddit.com/r/neovim/comments/1kimblf/is_anyone_else_not_getting_full_notifications_in/
                                    wrap = true,
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}
