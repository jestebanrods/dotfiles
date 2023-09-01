return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		"tpope/vim-dadbod",
	},
	keys = {
		{ "<leader><leader>db", ":tab DBUI<cr>", desc = "Open Database client" },
	},
	init = function()
		vim.g.db_ui_use_nerd_fonts = 1
		vim.g.db_ui_show_database_icon = 1

		vim.g.db_ui_table_helpers = {
			mysql = {
				Count = "SELECT COUNT(1) FROM {optional_schema}{table}",
				Explain = "EXPLAIN {last_query}",
			},
			sqlite = {
				Describe = "PRAGMA table_info({table})",
			},
		}
	end,
}
