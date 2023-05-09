--.
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "css",
                "dart",
                "dockerfile",
                "gitattributes",
                "gitignore",
                "go",
                "html",
                "http",
                "javascript",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "make",
                "markdown",
                "ninja",
                "php",
                "phpdoc",
                "scss",
                "sql",
                "vue",
                "yaml",
            },
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            highlight = {
                enable = true,
                disable = {},
            },
            indent = {
                enable = true
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "gnn",
                    scope_incremental = "gns",
                    node_incremental = "gnn",
                    node_decremental = "gnz",
                },
            },
            -- Extra Modules
            matchup = {
                enable = true,
                include_match_words = true,
            },
        })
    end,
}
