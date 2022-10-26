local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

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
		diagnostics.phpstan,
		diagnostics.phpcs,
		formatting.phpcsfixer,
		formatting.blade_formatter,
		-- JSON
		formatting.jq,
		-- Lua
		formatting.stylua,
	},
})
