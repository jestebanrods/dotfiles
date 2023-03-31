-- Execution Of Test Batteries
return {
	"vim-test/vim-test",
	keys = {
		{ "<leader>T", "<cmd>TestNearest<cr>" },
		{ "<leader>tf", "<cmd>TestFile<cr>" },
		{ "<leader>ts", "<cmd>TestSuit<cr>" },
		{ "<leader>tl", "<cmd>TestLast<cr>" },
	},
	init = function()
		vim.cmd([[
            let test#strategy = 'neovim'
            let test#neovim#term_position = 'vert'
            let g:test#preserve_screen = 1
        ]])
	end,
}
