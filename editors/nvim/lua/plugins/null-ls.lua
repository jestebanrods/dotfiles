-- Add Live Diagnostics To LSP.
return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufNewFile", "BufRead", "BufAdd" },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        local code_actions = {
            null_ls.builtins.code_actions.gitsigns,
            null_ls.builtins.code_actions.gomodifytags,
            null_ls.builtins.code_actions.impl,
            null_ls.builtins.code_actions.refactoring,
        }

        local completion = {}

        local diagnostics = {
            null_ls.builtins.diagnostics.eslint_d.with({
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
            }),
            null_ls.builtins.diagnostics.golangci_lint.with({
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
            }),
            null_ls.builtins.diagnostics.phpstan.with({
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
            }),
            null_ls.builtins.diagnostics.yamllint.with({
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
            }),
        }

        local formatting = {
            null_ls.builtins.formatting.beautysh,
            null_ls.builtins.formatting.blade_formatter,
            null_ls.builtins.formatting.eslint_d,
            null_ls.builtins.formatting.gofmt,
            null_ls.builtins.formatting.goimports,
            null_ls.builtins.formatting.goimports_reviser,
            null_ls.builtins.formatting.golines,
            null_ls.builtins.formatting.jq,
            null_ls.builtins.formatting.phpcsfixer.with({
                prefer_local = true,
            }),
            null_ls.builtins.formatting.sql_formatter,
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.yamlfmt
        }

        local hover = {
            null_ls.builtins.hover.printenv
        }

        null_ls.setup({
            sources = {
                unpack(code_actions),
                unpack(completion),
                unpack(diagnostics),
                unpack(formatting),
                unpack(hover)
            },
        })
    end
}
