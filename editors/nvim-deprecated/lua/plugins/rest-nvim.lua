-- Http Client
return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	ft = "http",
	keys = {
		{ "<leader><leader>rn", "<Plug>RestNvim", desc = "RestNvim" },
		{ "<leader><leader>rp", "<Plug>RestNvimPreview", desc = "RestNvimPreview" },
		{ "<leader><leader>rl", "<Plug>RestNvimLast", desc = "RestNvimLast" },
	},
}
