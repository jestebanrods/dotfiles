-- Allows Moving Code Blocks.
return {
	"matze/vim-move",
	keys = {
		{
			"<A-h>",
			"<plug>MoveBlockLeft",
			desc = "Move Block Left",
			mode = "v",
		},
		{
			"<A-j>",
			"<plug>MoveBlockDown",
			desc = "Move Block Down",
			mode = "v",
		},
		{
			"<A-k>",
			"<plug>MoveBlockUp",
			desc = "Move Block Up",
			mode = "v",
		},
		{
			"<A-l>",
			"<plug>MoveBlockRight",
			desc = "Move Block Right",
			mode = "v",
		},
	},
	init = function()
		vim.api.nvim_set_var("move_map_keys", 0)
	end,
}
