vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

local ok, packer = pcall(require, "packer")
if not ok then
    return
end

return packer.startup(function(use)
    -- NeoVim
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    -- Styles
    use 'edeneast/nightfox.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'kyazdani42/nvim-web-devicons'

    -- Status Bar
    use 'nvim-lualine/lualine.nvim'
    use 'kdheepak/tabline.nvim'
    use 'stevearc/dressing.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'nvim-telescope/telescope-file-browser.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
        }
    }

    use 'rcarriga/nvim-notify'
    use 'kyazdani42/nvim-tree.lua'

    -- Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        requires = {
            'nvim-treesitter/playground',
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-refactor',
        }
    }

    use 'jwalton512/vim-blade'

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Installation LSP/Debuggers/Other
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }

    -- Completion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'onsails/lspkind-nvim',
        }
    }

    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
            'WhoIsSethDaniel/mason-tool-installer.nvim',
            'nvim-lua/plenary.nvim',
        }
    }

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"

    -- IDE
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'lewis6991/gitsigns.nvim'
    use 'j-hui/fidget.nvim'
    use 'voldikss/vim-floaterm'

    -- Testing
    use 'vim-test/vim-test'


    -- use {
    --     'ThePrimeagen/refactoring.nvim',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-treesitter/nvim-treesitter'
    --     }
    -- }

end)
