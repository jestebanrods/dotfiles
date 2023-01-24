-- Allows Moving Code Blocks
return {
	"matze/vim-move",
	keys = {
		{ "<A-h>", "<Plug>MoveBlockLeft", mode = "v" },
		{ "<A-j>", "<Plug>MoveBlockDown", mode = "v" },
		{ "<A-k>", "<Plug>MoveBlockUp", mode = "v" },
		{ "<A-l>", "<Plug>MoveBlockRight", mode = "v" },
	},
	init = function()
		vim.api.nvim_set_var("move_map_keys", 0)
	end,
}
