local options = vim.o
local global = vim.g
local opt = vim.opt
local cmd = vim.cmd

global.mapleader = " "
global.snippets = "luasnip"

opt.guifont = { "JetBrainsMono Nerd Font", ":h10" }
opt.colorcolumn = "85"

cmd('colorscheme duskfox')

options.cursorline = true
options.number = true
options.relativenumber = true
options.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
options.clipboard = "unnamedplus"
options.undofile = true
options.termguicolors = true
options.laststatus = 3
options.cmdheight = 1

options.expandtab = true
options.tabstop = 4
options.softtabstop = 4
options.shiftwidth = 4
options.smartindent = true

options.hidden = true
options.errorbells = false
options.wrap = false
options.swapfile = false
options.hlsearch = false
options.incsearch = true
options.ignorecase = true
options.smartcase = true
options.scrolloff = 4
options.sidescrolloff = 4
options.showmode = false
options.splitbelow = true
options.splitright = true
options.autowrite = true
options.list = true
options.listchars = "tab:\\ ,trail:-"
options.updatetime = 50
options.signcolumn = "yes"
options.background = "dark"
