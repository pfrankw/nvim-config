
vim.lsp.config['rust-analyzer'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml' },
    settings = {
        ["rust-analyzer"] = {
            inlayHints = {
                enable = true,
                -- Customize hint appearances
                parameterHints = { suffix = ": ", useNamedParameters = true },
                typeHints = {
                    hideClosureInitialization = false,
                    typeHintsPattern = ".*",
                    separator = " ➔ ",
                    mode = "always"
                },
                chainingHints = { enable = true },
                closingBraceHints = { enable = true },
                lifetimeElisionHints = { enable = "skip_trivial" },
                reborrowHints = { enable = "never" },
            },
            checkOnSave = {
                command = "clippy",
            },
        }
    },
}

vim.lsp.enable('rust-analyzer')
