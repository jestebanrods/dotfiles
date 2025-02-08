local options = {
	autoindent = true,
	autowrite = true,
	clipboard = "unnamedplus",
	cmdheight = 1,
	colorcolumn = "120",
	cursorline = true,
	expandtab = false,
	foldcolumn = "0",
	hidden = true,
	ignorecase = true,
	list = true,
	listchars = { tab = "‣·", trail = "·" },
	shiftwidth = 4,
	softtabstop = 4,
	number = true,
	relativenumber = true,
	scroll = 4,
	sidescrolloff = 4,
	smartcase = true,
	splitbelow = true,
	splitright = true,
	tabstop = 4,
	termguicolors = true,
	undodir = os.getenv("HOME") .. "/.cache/nvim/undodir",
	undofile = true,
	updatetime = 500,
	wrap = false,
}

for o, v in pairs(options) do
	vim.opt[o] = v
end
