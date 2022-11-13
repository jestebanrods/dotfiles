local ok, neotest = pcall(require, "neotest")
if not ok then
	return
end

neotest.setup({
	adapters = {
		require("neotest-go"),
	},
})

local hydra = require("hydra")

local hint = [[
 NeoTest ^ ^                                                            _<Esc>_
 _n_: Near Test  _f_: Current File _l_: Last Test _m_: Run Marked _s_: Toggle Summary ^
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
		{ "n", neotest.run.run },
		{
			"f",
			function()
				neotest.run.run(vim.fn.expand("%"))
			end,
		},
		{ "l", neotest.run.run_last },
		{ "m", neotest.summary.run_marked },
		{ "s", neotest.summary.toggle },
		{ "<Esc>", nil, { exit = true } },
	},
})
