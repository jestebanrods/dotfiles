return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require "formatter.util"
		require("formatter").setup({
			-- https://github.com/mhartington/formatter.nvim/blob/master/lua/formatter/filetypes/go.lua
			filetype = {
				go = {
					require("formatter.filetypes.go").gofmt,
					require("formatter.filetypes.go").golines,
					require("formatter.filetypes.go").goimports,
				},
				json = {
					require("formatter.filetypes.json").jq,
				},
				javascript = {
					require("formatter.filetypes.javascript").eslint_d,
				},
				typescript = {
					require("formatter.filetypes.typescript").eslint_d,
				},
				yaml = {
					require("formatter.filetypes.yaml").yamlfmt,
				},
				sql = {
					function()
						return {
							exe = "sql-formatter",
							args = { util.escape_path(util.get_current_buffer_file_path()) },
							stdin = true
						}
					end
				},
			},
		})

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				vim.cmd("FormatWriteLock")
			end,
		})
	end,
}
