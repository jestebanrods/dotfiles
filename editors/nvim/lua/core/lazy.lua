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

local opts = {
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
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin"
            }
        }
    }
}

require("lazy").setup("plugins", opts)
