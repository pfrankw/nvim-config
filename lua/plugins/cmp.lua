return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp-document-symbol',
        'hrsh7th/cmp-nvim-lsp-signature-help',
    },
    config = function()
        local cmp = require 'cmp'

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected i  tems.
            }),
            sources = cmp.config.sources(
                {
                    { name = 'nvim_lsp' },
                },
                {
                    { name = 'path' },
                },
                {
                    { name = 'buffer' },
                },
                {
                    { name = 'nvim_lsp_document_symbol' }
                },
                {
                    { name = 'nvim_lsp_signature_help' }
                },
                {
                    { name = 'codecompanion' }
                },
           ),
        })
    end
}
