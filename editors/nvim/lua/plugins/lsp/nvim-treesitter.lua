-- Improves Languages Syntax.
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
				disable = {},
			},
			indent = {
				enable = true,
				disable = {},
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					scope_incremental = "gns",
					node_incremental = "gnn",
					node_decremental = "gnz",
				},
			},
			-- Extra Modules
			matchup = {
				enable = true,
				include_match_words = true,
			},
		})
	end,
}
