-- Permite saltar entre el final y el inicio de una declaración.
return {
	"andymass/vim-matchup",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	init = function()
		local set_var = vim.api.nvim_set_var

		set_var("matchup_matchparen_insert_timeout", 300)
		set_var("matchup_matchparen_deferred", 1)
		set_var("matchup_matchparen_deferred_show_delay", 40)
		set_var("matchup_matchparen_deferred_hide_delay", 0)
		set_var("matchup_matchparen_offscreen", { method = "popup" })
	end,
}
