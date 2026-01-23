return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        branch = 'master',
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                highlight = {
                    enable = true,
                },
                indent = { enable = true },
                autotag = { enable = true },
                ensure_installed = {
                    "json", "python", "ron", "javascript", "haskell", "d", "query",
                    "typescript", "tsx", "rust", "zig", "php", "yaml", "html", "css",
                    "markdown", "markdown_inline", "bash", "lua", "vim", "vimdoc", "c",
                    "dockerfile", "gitignore", "astro",
                },
                auto_install = false,
            })
        end
    }
}
