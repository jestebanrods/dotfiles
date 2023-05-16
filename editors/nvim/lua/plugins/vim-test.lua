-- Execution Of Test Batteries.
return {
	"vim-test/vim-test",
	dependencies = {
		"tpope/vim-dispatch",
	},
	keys = {
		{ "<leader>T", "<cmd>TestNearest<cr>" },
		{ "<leader>tf", "<cmd>TestFile<cr>" },
		{ "<leader>tl", "<cmd>TestLast<cr>" },
	},
	init = function()
		vim.cmd([[
			let test#strategy = {'nearest': 'dispatch_background', 'file': 'neovim'}
			let test#go#runner = 'gotest'
			let test#go#gotest#options = '-coverprofile=coverage.out'
			let g:test#preserve_screen = 1
	  ]])
	end,
}
