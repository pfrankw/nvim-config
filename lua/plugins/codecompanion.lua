return {
    "olimorris/codecompanion.nvim",
    opts = {
        display = {
            chat = {
                window = {
                    position = "right"
                },
            },
        },
        opts = {
            log_level = 'DEBUG'
        },
        strategies = {
            chat = {
                adapter = "anthropic",
            },
            inline = {
                adapter = "ollama",
            },
        },
        adapters = {
            anthropic = function()
                return require("codecompanion.adapters").extend("anthropic", {
                    -- schema = {
                    --     model = {
                    --         default = "claude-3-5-haiku-20241022",
                    --     }
                    -- },
                    env = {
                        api_key = require('config.anthropic').api_key
                    }
                })
            end,
            ollama = function()
                return require("codecompanion.adapters").extend("ollama", {
                    schema = {
                        model = {
                            default = "deepseek-coder-v2:16b",
                        },
                        num_ctx = {
                            default = 40000,
                        },
                    },
                })
            end,
        }
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        'hrsh7th/nvim-cmp',
    },
}
