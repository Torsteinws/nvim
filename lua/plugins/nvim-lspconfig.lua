return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            ---@type lspconfig.options
            servers = {
                jsonls = {
                    settings = {
                        json = {
                            format = {
                                -- enable = false,
                                keepLines = true,
                            },
                        },
                    },
                },
            },
        },
    },
}
