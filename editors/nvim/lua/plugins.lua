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

    -- IDE
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'lewis6991/gitsigns.nvim'

    -- Styles
    use 'edeneast/nightfox.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'kyazdani42/nvim-web-devicons'

    -- Status Bar
    use 'nvim-lualine/lualine.nvim'
    use 'kdheepak/tabline.nvim'

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

    -- Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
    }

    use 'nvim-treesitter/playground'

    -- use 'nvim-treesitter/nvim-treesitter-refactor'
    -- use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- LSP
    use "neovim/nvim-lspconfig"

    -- Installation LSP/Debuggers/Other
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }

    -- use 'vim-test/vim-test'

    -- use 'jwalton512/vim-blade'

    -- use {
    --     'hrsh7th/nvim-cmp',
    --     requires = {
    --         'hrsh7th/cmp-nvim-lsp',
    --         'hrsh7th/cmp-buffer',
    --         'hrsh7th/cmp-path',
    --         'hrsh7th/cmp-cmdline',
    --     }
    -- }

    -- use 'jose-elias-alvarez/null-ls.nvim'

    -- use {
    --     'ThePrimeagen/refactoring.nvim',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-treesitter/nvim-treesitter'
    --     }
    -- }
end)
