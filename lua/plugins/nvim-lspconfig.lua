return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            inlay_hints = {
                exclude = { "typescriptreact" },
            },
            ---@type lspconfig.options
            servers = {
                denols = {
                    enabled = true,
                },
            },
        },
    },
}
