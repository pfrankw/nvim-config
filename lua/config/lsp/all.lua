
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config['*'] = {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        -- Buffer-local keymaps
        local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        map('n', '<leader>F', function()
            vim.lsp.buf.format { async = true }
        end, '[LSP] Format')

        map('n', 'gd', vim.lsp.buf.definition, '[LSP] Go to definition')
        map('n', 'gD', vim.lsp.buf.declaration, '[LSP] Go to declaration')
        map('i', '<C-s>', vim.lsp.buf.signature_help, 'Signature Help')
    end
}

vim.lsp.inlay_hint.enable()
