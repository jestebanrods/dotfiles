-- Adds Coverage Signs.
return {
    "andythigpen/nvim-coverage",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {
            "<leader>tcc",
            "<cmd>CoverageLoad<cr><cmd>CoverageShow<cr>",
            desc = "Comment Out Line"
        },
    },
    config = function()
        require("coverage").setup({
            commands = true, -- create commands
            highlights = {
                -- customize highlight groups created by the plugin
                covered = { fg = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
                uncovered = { fg = "#F07178" },
            },
            signs = {
                -- use your own highlight groups or text markers
                covered = { hl = "CoverageCovered", text = "▎" },
                uncovered = { hl = "CoverageUncovered", text = "▎" },
            },
            summary = {
                -- customize the summary pop-up
                min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
            },
            lang = {
                -- customize language specific settings
            },
        })
    end,
}
