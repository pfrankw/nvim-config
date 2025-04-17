require('config.lazy')

-- Make diagnostics float on hover
vim.o.updatetime = 250

vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false })
    end
})

vim.wo.number = true            -- Enable absolute line numbers

vim.o.smartindent = true        -- Enable smart indentation
vim.o.autoindent = true         -- Auto indent when new lines are added
vim.o.expandtab = true          -- Use spaces instead of tabs
vim.o.tabstop = 4               -- Set the width of a tab character
vim.o.shiftwidth = 4            -- Number of spaces to use for each indent level

vim.o.clipboard = 'unnamedplus' -- Use the system clipboard for copy-paste

vim.wo.cursorline = true        -- Highlight the current line

vim.o.hlsearch = true           -- Highlight search results
vim.o.incsearch = true          -- Incrementally highlight as you type

vim.o.ignorecase = true         -- Ignore case in search
vim.o.smartcase = true          -- Respect case when at least one uppercase letter is searched

vim.filetype.add({              -- Disable htmldjango for bug in treesitter
    extension = {
        html = "html",
    },
})

require('config.lsp.all')
require('config.lsp.luals')
require('config.lsp.rust-analyzer')
require('config.lsp.clangd')
require('config.lsp.pyright')
require('config.lsp.jsonls')
require('config.lsp.html')

