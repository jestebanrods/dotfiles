-- Fuzzy Finder Window Manager
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Lua Add-On For Plugin Development
		"nvim-telescope/telescope-file-browser.nvim", -- Add-On To List Folder Structure
	},
	config = function()
		require("alpha.telescope.setup")
		require("alpha.telescope.mappings")
	end,
}
