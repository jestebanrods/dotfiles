-- Supports Various Common Refactoring Operations
return {
	"theprimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Lua Add-On For Plugin Development
		"nvim-treesitter/nvim-treesitter", -- Builds A Concrete Syntax Tree For Source Files
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
