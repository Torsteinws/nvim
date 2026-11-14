return {

    {
        "smart-splits-nvim/smart-splits.nvim",
        branch = "v3",
        opts = {
            move = {
                -- at_edge = "wrap",
                at_edge = "stop",
                --at_edge = "split",
            },
            mux = {
                backend = "smart-splits-backend-zellij-rs",
            },
        },
        dependencies = {
            {
                "smart-splits-nvim/backend-zellij-rs",
                opts = {
                    fullscreen = {
                        block_nav = false, -- Block navigation if the current pane is fullscreen
                        state_after_nav = "exit",
                    },
                },
            },
        },
    },
}
