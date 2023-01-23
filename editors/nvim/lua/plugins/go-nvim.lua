-- Agrega herramientas para desarrollo en Go.
return {
	"ray-x/go.nvim",
	dependencies = {
		"neovim/nvim-lspconfig", -- Configurador rápido de LSP.
		"nvim-treesitter/nvim-treesitter", -- Resaltado de sintanxis de lenguajes de programación.
	},
	ft = { "go", "gohtml", "tmpl" },
	config = function()
		require("go").setup()
	end,
}

-- TODO Creates Hydra Mappings
