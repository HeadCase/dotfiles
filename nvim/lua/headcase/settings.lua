-- Vanilla neovim configurations
local g = vim.g -- a table to access global variables
local opt = vim.opt -- to set options
local locb = vim.bo -- to set options
local locw = vim.wo -- to set options

---------------------------------------
-- Global Look and feel (and colour) --
---------------------------------------
-- g.python3_host_prog = '/home/gheadley/.pyenv/versions/shims/python3'
g.python_host_prog = "/home/gheadley/.pyenv/versions/2.7.18/bin/python2.7"

locw.spell = true
locb.spelllang = "en_gb"
opt.autowrite = true
opt.colorcolumn = "80"
opt.expandtab = true
opt.hidden = true
opt.history = 700 -- keep 700 lines of command line history
opt.hlsearch = false
opt.incsearch = true
opt.mouse = "nv"
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.shiftwidth = 2
opt.sidescroll = 10
opt.sidescrolloff = 20
opt.signcolumn = "yes"
opt.signcolumn = "yes:2"
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = 2
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.undodir = "/home/gheadley/.config/nvim/undo"
opt.undofile = true
opt.undolevels = 700 -- keep 700 lines of undo
opt.wrap = false

opt.completeopt = { "menu", "menuone", "noselect" }

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
