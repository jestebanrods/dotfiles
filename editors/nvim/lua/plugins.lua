vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use 'nvim-treesitter/playground'

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        }
    }

    use {
        'lewis6991/gitsigns.nvim'
    }

    use 'EdenEast/nightfox.nvim'
    use 'morhetz/gruvbox'
    use 'nlknguyen/papercolor-theme'
    use 'doums/darcula'

    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'jwalton512/vim-blade'

    use 'feline-nvim/feline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'mattesgroeger/vim-bookmarks'
end)
