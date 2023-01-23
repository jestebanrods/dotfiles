-- Fuzzy Finder Window Manager.
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Módulo comunmente usado para la creación de plugins.
		"nvim-telescope/telescope-file-browser.nvim", -- Extensión para listar estructura de carpetas.
	},
	config = function()
		require("alpha.telescope.setup")
		require("alpha.telescope.mappings")
	end,
}
