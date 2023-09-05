return {
	"mhartington/formatter.nvim",
	config = function()
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
			},
		})

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				vim.cmd("FormatWriteLock")
			end,
		})
	end,
}
