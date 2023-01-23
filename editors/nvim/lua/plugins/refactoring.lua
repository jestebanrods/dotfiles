-- Supports Various Common Refactoring Operations.
return {
	"theprimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Módulo comunmente usado para la creación de plugins.
		"nvim-treesitter/nvim-treesitter", -- Resaltado de sintanxis de lenguajes de programación.
	},
	keys = {
		{
			"<leader>rr",
			function()
				require("telescope").extensions.refactoring.refactors()
			end,
			mode = { "n", "v" },
		},
	},
	config = function()
		require("refactoring").setup({})
		require("telescope").load_extension("refactoring")
	end,
}
