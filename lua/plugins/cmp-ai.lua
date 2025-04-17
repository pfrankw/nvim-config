return {
    'tzachar/cmp-ai',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'hrsh7th/nvim-cmp'
    },
    config = function()
        local cmp_ai = require('cmp_ai.config')

        cmp_ai:setup({
            max_lines = 100,
            provider = 'Ollama',
            provider_options = {
                model = 'qwen2.5-coder:3b',
                auto_unload = false, -- Set to true to automatically unload the model when
                -- exiting nvim.
                prompt = function(lines_before, lines_after)
                    return lines_before
                end,
                suffix = function(lines_after)
                    return lines_after
                end,
            },
            notify = true,
            notify_callback = function(msg)
                vim.notify(msg)
            end,
            run_on_every_keystroke = true,
            ignored_file_types = {
                -- default is not to ignore
                -- uncomment to ignore in lua:
                -- lua = true
            },
        })
    end
}
