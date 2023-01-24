-- Adds Terminal Display In Floating Window
return {
	"voldikss/vim-floaterm",
	keys = {
		{ "``", "<cmd>FloatermToggle<cr>", desc = "FloatermToggle", mode = { "n", "t" } },
		{ "`n", "<cmd>FloatermNext<cr>", desc = "FloatermNext", mode = { "n", "t" } },
		{ "`p", "<cmd>FloatermPrev<cr>", desc = "FloatermPrev", mode = { "n", "t" } },
		{ "`c", "<cmd>FloatermNew<cr>", desc = "FloatermNew", mode = { "n", "t" } },
	},
}
