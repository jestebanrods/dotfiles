-- Visualizador de terminal en ventana flotante.
return {
	"voldikss/vim-floaterm",
	keys = {
		{ "``", "<cmd>FloatermToggle<cr>", desc = "NeoTree", mode = { "n", "t" } },
		{ "`n", "<cmd>FloatermNext<cr>", desc = "NeoTree", mode = { "n", "t" } },
		{ "`p", "<cmd>FloatermPrev<cr>", desc = "NeoTree", mode = { "n", "t" } },
		{ "`c", "<cmd>FloatermNew<cr>", desc = "NeoTree", mode = { "n", "t" } },
	},
}
