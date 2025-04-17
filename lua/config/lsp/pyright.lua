
vim.lsp.config['pyright'] = {
    name = 'pyright',
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    --root_dir = vim.fs.dirname(vim.fs.find({ 'pyproject.toml', 'setup.py', 'requirements.txt' }, { upward = true })[1]),
    root_markers = {
        'pyproject.toml',
        'setup.py',
        'setup.cfg',
        'requirements.txt',
        'Pipfile',
        'pyrightconfig.json',
        '.git',
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    settings = {
        python = {
            analysis = {
                typeCheckingMode = 'basic',
                autoSearchPaths = true,
                diagnosticMode = 'workspace',
                useLibraryCodeForTypes = true
            }
        }
    }
}
vim.lsp.enable('pyright')
