vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[packadd packer.nvim]])

local ok, packer = pcall(require, "packer")
if not ok then
	return
end

return packer.startup(function(use)
	-- NeoVim
	use("wbthomason/packer.nvim") -- Mantiene actualizado el manejador de paquetes.
	use("lewis6991/impatient.nvim") -- Optimiza la carga de plugins.

	-- Themes
	use("edeneast/nightfox.nvim")

	-- Styles
	use("xiyaowong/nvim-transparent") -- Habilita la transparencia de la terminal.
	use("kyazdani42/nvim-web-devicons") -- Agrega pack de iconos.

	-- Status Bar
	use("nvim-lualine/lualine.nvim") -- Barra de estados inferior.
	use("stevearc/dressing.nvim") -- Remplaza los inputs y selects de vim nativo por un menú contextual.

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim", -- Administrador de ventanas de búsqueda rápida.
		requires = {
			"nvim-lua/plenary.nvim", -- Módulo comunmente usado para la creación de plugins.
			"nvim-telescope/telescope-file-browser.nvim", -- Extensión para listar estructura de carpetas.
			"theprimeagen/refactoring.nvim", -- Extensión para funciones de refactorización.
		},
	})

	-- Syntax
	use({
		"nvim-treesitter/nvim-treesitter", -- Resaltado de sintanxis de lenguajes de programación.
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		requires = {
			"nvim-treesitter/playground", -- Extensión para analizar el arbol de sintaxis.
			"nvim-treesitter/nvim-treesitter-textobjects", -- Extensión para la selección textos para programación.
			"nvim-treesitter/nvim-treesitter-refactor", -- Extensión para renaming y resaltado de ocurrencias de variables.
		},
	})

	-- Languages
	use("fatih/vim-go") -- Agrega herramientas para desarrollo en Go.
	use("jwalton512/vim-blade") -- Sintaxis para plantillas Blade de Laravel.
	use("akinsho/flutter-tools.nvim") -- Configura el entorno de desarrollo para Flutter.

	-- Language Server Protocol (LSP)
	use("neovim/nvim-lspconfig") -- Configurador rápido de LSP.
	use("j-hui/fidget.nvim") -- Visualizador de progreso de carga del LSP.

	-- Installation LSP/Debuggers/Other
	use({
		"williamboman/mason.nvim", -- Manejador de paquetes para servidores LSP, linters y formaters.
		requires = {
			"williamboman/mason-lspconfig.nvim", -- Extensión para la autoinstalación de servers.
			"whoissethdaniel/mason-tool-installer.nvim", -- Instalador de herramientas adicionales.
		},
	})

	-- Completion
	use({
		"hrsh7th/nvim-cmp", -- Motor de autocompletado y sugerencias de código.
		requires = {
			"hrsh7th/cmp-buffer", -- Extensión que sugiere palabras de los buffers.
			"hrsh7th/cmp-cmdline", -- Extensión para que autocomplete en el cmdline de vim.
			"hrsh7th/cmp-nvim-lsp", -- Extensión que sugiere a partir del LSP.
			"hrsh7th/cmp-nvim-lsp-signature-help", -- Extensión que sugiere la firma de los métodos.
			"hrsh7th/cmp-nvim-lua", -- Extensión que sugiere nativamente lua.
			"hrsh7th/cmp-path", -- Extensión que sugiere los archivos del sistema.
			"hrsh7th/cmp-calc", -- Extensión que permite sugerir calculos matemáticos.
			"onsails/lspkind-nvim", -- Extensión que agrega simbolos y tipado a los tipos de autocompletado.
		},
	})

	use("jose-elias-alvarez/null-ls.nvim") -- Complemento para el analisis, diagnostico, acciones y formateo de código.

	-- Snippets
	use("l3mon4d3/luasnip") -- Motor de snippets.
	use("saadparwaiz1/cmp_luasnip") -- Complemento para el uso de snippets con autocompletado.
	use("rafamadriz/friendly-snippets") -- Lista de snippets basados en visual studio code.

	-- IDE
	use("tpope/vim-commentary") -- Manejador de comentarios.
	use("tpope/vim-repeat") -- Otorga funcionalidad extra al operador de repetición punto.
	use("tpope/vim-surround") -- Añade funcionalidad para realizar operaciones al rededor de un conjunto de claves.
	use("windwp/nvim-autopairs") -- Permite el autocerrado de diferentes claves.
	use("voldikss/vim-floaterm") -- Visualizador de terminal en ventana flotante.
	use("nicwest/vim-camelsnek") -- Añade transformación de strings.
	use("folke/trouble.nvim") -- Visualizador de diagnosticos de código.
	use("rcarriga/nvim-notify") -- Manejador de notificaciones emergentes.

	-- Git
	use("tpope/vim-fugitive") -- Añade integración con git.
	use("sindrets/diffview.nvim") -- Visor de cambios y comparación entre commits.
	use("lewis6991/gitsigns.nvim") -- Agrega decoraciones de la metainformación de los commits.

	-- Testing
	use("vim-test/vim-test") -- Ejecución de baterias de tests.

	-- Dev Tools
	use("anuvyklack/hydra.nvim") -- Herramienta para la creación de grupos de comandos.
end)
