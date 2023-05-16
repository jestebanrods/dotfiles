local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    print("Installing Lazy.NVIM ...")

    vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            lazypath
        }
    )
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = 'plugins' },
        { import = 'plugins.schemes' },
    },
    defaults = {
        lazy = false,
        cond = true
    },
    dev = {
        path = vim.fn.stdpath("config") .. "/lua/projects"
    },
    install = {
        missing = true
    },
    checker = {
        enabled = false,
        notify = true
    },
    change_detection = {
        enabled = true,
        notify = true
    },
    performance = {
        cache = { enabled = true },
        rtp = {
            disabled_plugins = {
                '2html_plugin',
                'getscript',
                'getscriptPlugin',
                'gzip',
                'logipat',
                'matchit',
                'matchparen',
                'netrw',
                'netrwFileHandlers',
                'netrwPlugin',
                'netrwSettings',
                'rplugin',
                'rrhelper',
                'tar',
                'tarPlugin',
                'tohtml',
                'tutor',
                'vimball',
                'vimballPlugin',
                'zip',
                'zipPlugin',
            }
        }
    }
})
