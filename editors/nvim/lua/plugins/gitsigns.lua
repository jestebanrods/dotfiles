-- Agrega decoraciones de la metainformación de los commits.
return {
	"lewis6991/gitsigns.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Módulo comunmente usado para la creación de plugins.
	},
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup({
			trouble = false,
			on_attach = function(bufnr)
				vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hj", gitsigns.next_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hk", gitsigns.prev_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hb", gitsigns.toggle_current_line_blame, { buffer = bufnr })
			end,
			max_file_length = 10000,
		})
	end,
}
