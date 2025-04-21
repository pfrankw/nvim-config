vim.lsp.config('html', {
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html', 'ejs', 'htmldjango' },
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    },
    settings = {
        html = {
            autoClosingTags = true,
            suggest = { html5 = true }
        }
    }
})

vim.lsp.enable('html')
