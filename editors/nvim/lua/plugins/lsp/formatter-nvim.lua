return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")

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
			},
		})

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				vim.cmd("FormatWriteLock")
			end,
		})
	end,
}