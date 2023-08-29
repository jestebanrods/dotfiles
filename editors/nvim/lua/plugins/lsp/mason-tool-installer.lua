-- Autoinstaller Mason Tools.
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- Diagnostics
			"eslint_d",
			"golangci-lint",
			"phpstan",
			"yamllint",
			-- Formatting
			"beautysh",
			"blade-formatter",
			"goimports",
			"goimports-reviser",
			"golines",
			"jq",
			"php-cs-fixer",
			"sql-formatter",
			"stylua",
			"yamlfmt",
		},
		auto_update = false,
		debounce_hours = nil,
	},
}
