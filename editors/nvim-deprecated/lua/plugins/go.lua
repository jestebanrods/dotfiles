-- Adds Tools For Go Development
return {
	"ray-x/go.nvim",
	dependencies = {
		"neovim/nvim-lspconfig", -- LSP Client Quick Configurator
		"nvim-treesitter/nvim-treesitter", -- Builds A Concrete Syntax Tree For Source Files
	},
	ft = { "go", "gohtml", "tmpl", "gohtmltmpl"},
	config = function()
		require("go").setup()
	end,
}

-- TODO Creates Hydra Mappings
