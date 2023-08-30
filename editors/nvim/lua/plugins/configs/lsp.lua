local lsp_server = {
	"ansiblels",
	"bashls",
	"cssls",
	"docker_compose_language_service",
	"dockerls",
	"gopls",
	"html",
	"jsonls",
	"lua_ls",
	"phpactor",
	"sqlls",
	"tsserver",
	"vuels",
	"yamlls",
}

local lsp_linter = {
	"eslint_d",
	"golangci-lint",
	"phpstan",
	"yamllint",
}

local lsp_formatter = {
	"beautysh",
	"blade-formatter",
	"goimports",
	"golines",
	"jq",
	"php-cs-fixer",
	"sql-formatter",
	"stylua",
	"yamlfmt",
}

-- Debería Tener Un Linter & Formatting Por Cada LSP Server

return lsp_server
