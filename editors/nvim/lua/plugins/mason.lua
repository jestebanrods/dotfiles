-- Install Manager LSP Servers, DAP Servers, Linters, And Formatters.
return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	config = true,
}
