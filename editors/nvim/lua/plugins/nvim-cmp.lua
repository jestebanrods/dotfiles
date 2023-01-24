-- Motor de autocompletado y sugerencias de código.
return {
	"hrsh7th/nvim-cmp",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	dependencies = {
		"hrsh7th/cmp-buffer", -- Extensión que sugiere palabras de los buffers.
		"hrsh7th/cmp-cmdline", -- Extensión para que autocomplete en el cmdline de vim.
		"hrsh7th/cmp-nvim-lsp", -- Extensión que sugiere a partir del LSP.
		"hrsh7th/cmp-nvim-lsp-signature-help", -- Extensión que sugiere la firma de los métodos.
		"hrsh7th/cmp-nvim-lua", -- Extensión que sugiere nativamente lua.
		"hrsh7th/cmp-path", -- Extensión que sugiere los archivos del sistema.
		"hrsh7th/cmp-calc", -- Extensión que permite sugerir calculos matemáticos.
		"onsails/lspkind-nvim", -- Extensión que agrega simbolos y tipado a los tipos de autocompletado.
		"l3mon4d3/luasnip", -- Motor de snippets.
		"saadparwaiz1/cmp_luasnip", -- Complemento para el uso de snippets con autocompletado.
		"rafamadriz/friendly-snippets", -- Lista de snippets basados en visual studio code.
		"windwp/nvim-autopairs", -- Permite el autocerrado de diferentes claves.
	},
	config = function()
		require("alpha.cmp.cmp")
		require("alpha.cmp.luasnip")
	end,
}
