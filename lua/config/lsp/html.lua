vim.lsp.config('html', {
    name = 'html',
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html', 'ejs', 'htmldjango'},
    settings = {
        html = {
            autoClosingTags = true,
            suggest = { html5 = true }
        }
    }
})

vim.lsp.enable('html')
