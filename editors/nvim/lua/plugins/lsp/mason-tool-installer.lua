-- Autoinstaller Mason Tools.
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- Linter
			"eslint_d",
			"golangci-lint",
			"phpstan",
			"yamllint",
			"luacheck",

			-- Formatter
			"beautysh",
			"blade-formatter",
			"goimports",
			"golines",
			"jq",
			"php-cs-fixer",
			"sql-formatter",
			"stylua",
			"yamlfmt",

			-- DAP
			"go-debug-adapter",
			"node-debug2-adapter",
			"firefox-debug-adapter",
		},
		auto_update = false,
		debounce_hours = nil,
	},
}
