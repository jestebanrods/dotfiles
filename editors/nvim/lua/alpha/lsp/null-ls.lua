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
		-- Code Actions
		code_actions.gitsigns,
		code_actions.gomodifytags,
		code_actions.refactoring,
		-- Diagnostics
		diagnostics.golangci_lint,
		diagnostics.phpstan,
		-- Formattings
		formatting.blade_formatter,
		formatting.gofmt,
		formatting.goimports,
		formatting.jq,
		formatting.phpcsfixer,
		formatting.shfmt,
		formatting.sql_formatter,
		formatting.stylua,
	},
})
