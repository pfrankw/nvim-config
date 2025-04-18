return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'tzachar/cmp-ai'
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
                    { name = 'buffer' }, -- Mentioned in the official cmp documentation but doesn't actually seem to work. I'll keep this here.
                },
                {
                    { name = 'cmp_ai' }
                }
            ),
        })
    end
}
