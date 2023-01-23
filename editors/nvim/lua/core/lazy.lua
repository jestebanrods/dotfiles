local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local config = {
	defaults = {
		lazy = false,
	},
	lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
	install = {
		missing = true,
	},
}

if not vim.loop.fs_stat(lazypath) then
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
