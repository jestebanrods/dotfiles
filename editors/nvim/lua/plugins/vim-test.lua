-- Ejecución de baterias de tests.
return {
	"vim-test/vim-test",
	keys = {
		{ "<leader>T", "<cmd>TestNearest<cr>" },
		{ "<leader>tf", "<cmd>TestFile<cr>" },
		{ "<leader>ts", "<cmd>TestSuit<cr>" },
		{ "<leader>tl", "<cmd>TestLast<cr>" },
	},
}

-- vim.cmd([[
--     let test#strategy = 'neovim'
--     let g:test#preserve_screen = 1
-- ]])

-- local ok, hydra = pcall(require, "hydra")
-- if not ok then
-- 	return
-- end

-- local hint = [[
--  NeoTest ^ ^                                                            _<Esc>_
--  _n_: Near Test  _f_: Current File _l_: Last Test _s_: Suit Test ^
-- ]]

-- hydra({
-- 	name = "neotest",
-- 	hint = hint,
-- 	mode = "n",
-- 	config = {
-- 		color = "teal",
-- 		invoke_on_body = true,
-- 		hint = {
-- 			border = "rounded",
-- 			position = "bottom",
-- 		},
-- 	},
-- 	body = "<leader>tt",
-- 	heads = {
-- 		{
-- 			"n",
-- 			function()
-- 				vim.cmd("TestNearest")
-- 			end,
-- 		},
-- 		{
-- 			"f",
-- 			function()
-- 				vim.cmd("TestFile")
-- 			end,
-- 		},
-- 		{
-- 			"l",
-- 			function()
-- 				vim.cmd("TestLast")
-- 			end,
-- 		},
-- 		{
-- 			"s",
-- 			function()
-- 				vim.cmd("TestSuit")
-- 			end,
-- 		},
-- 		{
-- 			"<Esc>",
-- 			nil,
-- 			{
-- 				exit = true,
-- 			},
-- 		},
-- 	},
-- })
