
vim.lsp.config['clangd'] = {
    cmd = { 'clangd' },
    filetypes = { 'c' },
    root_markers = { '.clangd' },
}

vim.lsp.enable('clangd')
