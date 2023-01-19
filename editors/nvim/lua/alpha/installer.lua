local download_lazy = function(lazypath)
	print("Installing lazy.nvim ...")

	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})

	print("Downloading lazy.nvim ...")
	print(out)
	print("( You'll need to restart now )")
end

return function()
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

	if not vim.loop.fs_stat(lazypath) then
		download_lazy(lazypath)
	end

	print("Loading lazy.nvim ...")
	vim.opt.rtp:prepend(lazypath)

	return false
end
