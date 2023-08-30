return {
	"mfussenegger/nvim-lint",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	config = function()
		require("lint").linters_by_ft = {
			go = { "golangcilint" },
			php = { "phpstan" },
			yaml = { "yamllint" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
