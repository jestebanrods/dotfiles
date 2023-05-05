-- Autocomplete Engine And Code Hints
return {
	"hrsh7th/nvim-cmp",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	dependencies = {
		"hrsh7th/cmp-buffer", -- Add-On Source For Buffer Words
		"hrsh7th/cmp-cmdline", -- Add-On Source For Vim Command Line
		"hrsh7th/cmp-nvim-lsp", -- Add-On Source For Built-In LSP
		"hrsh7th/cmp-nvim-lsp-signature-help", -- Add-On Source For Displaying Functions Signatures
		"hrsh7th/cmp-nvim-lua", -- Add-On Source For Lua API
		"hrsh7th/cmp-path", -- Add-On Source For Filesystem Paths
		"hrsh7th/cmp-calc", -- Add-On Source For Math Calculation
		"onsails/lspkind-nvim", -- Adds VSCode Pictograms To Built-In LSP
		"l3mon4d3/luasnip", -- Snippets Engine
		"saadparwaiz1/cmp_luasnip", -- Adds Completion Of Snippets
		"rafamadriz/friendly-snippets", -- Snippets Based On VSCode
		"windwp/nvim-autopairs", -- Allows Autoclose Pairs From Multiple Characters
	},
	config = function()
		require("alpha.cmp.cmp")
		require("alpha.cmp.luasnip")
	end,
}
