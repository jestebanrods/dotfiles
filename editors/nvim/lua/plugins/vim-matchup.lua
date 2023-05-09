-- Navigation Of A Statement.
return {
	"andymass/vim-matchup",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	init = function()
		vim.api.nvim_set_var("matchup_matchparen_offscreen", { method = "popup" })
	end,
}
