local ok, null_ls = pcall(require, 'null-ls')
if not ok then
    return
end

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local methods = null_ls.methods

null_ls.setup({
    debug = true,
    sources = {
        -- General
        code_actions.refactoring,
        -- Go
        diagnostics.golangci_lint,
        formatting.gofmt,
        formatting.goimports,
        -- PHP
        diagnostics.phpstan.with({
            command = "./vendor/bin/phpstan",
            to_temp_file = false,
            method = methods.DIAGNOSTICS_ON_SAVE,
        }),
        diagnostics.phpcs.with({
            command = "./vendor/bin/phpcs",
            to_temp_file = false,
            method = methods.DIAGNOSTICS_ON_SAVE,
        }),
        formatting.phpcsfixer.with({
            command = "./vendor/bin/php-cs-fixer",
        }),
        formatting.blade_formatter,
        -- JSON
        formatting.jq,
        -- Lua
        formatting.stylua,
    },
})
