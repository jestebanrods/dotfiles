local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local config = {
	install = {
		missing = true,
	},
	checker = {
		enabled = false,
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
				"zipPlugin",
			},
		},
	},
}

if not vim.loop.fs_stat(lazypath) then
	print("Installing Lazy.NVIM ...")

	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", config)
