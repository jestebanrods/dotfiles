local ok, mason = pcall(require, "mason")
if not ok then
	return
end

local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({})

mason_lspconfig.setup({
	automatic_installation = true,
})

mason_tool_installer.setup({
	ensure_installed = {
		-- LSP
		"dockerfile-language-server",
		"gopls",
		"html-lsp",
		"intelephense",
		"json-lsp",
		"lua-language-server",
		"phpactor",
		"typescript-language-server",
		"vue-language-server",
		-- Formatter
		"blade-formatter",
		"goimports",
		"php-cs-fixer",
		"stylua",
		-- Linters
		"golangci-lint",
		"phpcs",
		"phpstan",
	},
	auto_update = false,
	run_on_start = true,
	start_delay = 3000,
})
