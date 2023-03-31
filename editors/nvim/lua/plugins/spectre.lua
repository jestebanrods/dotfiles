-- Search & Replace Tools.
return {
	"windwp/nvim-spectre",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>F", ":Spectre<CR>" },
	},
}
