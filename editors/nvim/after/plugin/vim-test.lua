vim.cmd([[
    let test#strategy = 'neovim'
    let g:test#preserve_screen = 1
]])

vim.api.nvim_set_keymap("n", "<leader>T", ":TestNearest<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", { noremap = true })

local ok, hydra = pcall(require, "hydra")
if not ok then
	return
end

local hint = [[
 NeoTest ^ ^                                                            _<Esc>_
 _n_: Near Test  _f_: Current File _l_: Last Test _s_: Suit Test ^
]]

hydra({
	name = "neotest",
	hint = hint,
	mode = "n",
	config = {
		color = "teal",
		invoke_on_body = true,
		hint = {
			border = "rounded",
			position = "bottom",
		},
	},
	body = "<leader>tt",
	heads = {
		{
			"n",
			function()
				vim.cmd("TestNearest")
			end,
		},
		{
			"f",
			function()
				vim.cmd("TestFile")
			end,
		},
		{
			"l",
			function()
				vim.cmd("TestLast")
			end,
		},
		{
			"s",
			function()
				vim.cmd("TestSuit")
			end,
		},
		{
			"<Esc>",
			nil,
			{
				exit = true,
			},
		},
	},
})
