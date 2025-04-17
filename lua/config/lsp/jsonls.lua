-- Set up JSON/JSONc filetype detection
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = '*.jsonc',
    command = 'set filetype=jsonc'
})

vim.lsp.config('jsonls', {
    cmd = { 'vscode-json-language-server', '--stdio' },
    filetypes = { 'json', 'jsonc' },
    settings = {
        json = {
            schemas = {
                {
                    fileMatch = { 'package.json' },
                    url = 'https://json.schemastore.org/package.json'
                }
            },
            validate = { enable = true },
            format = { enable = true },
            allowComments = true, -- critical for JSONc support,
        }
    },
})

vim.lsp.enable('jsonls')
