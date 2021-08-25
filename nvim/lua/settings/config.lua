---------------------------
-- Lua config for neovim --
---------------------------
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

---------------------------------------
-- Global Look and feel (and colour) --
---------------------------------------
g.mapleader = " "

opt.relativenumber = true
opt.signcolumn = 'yes'
opt.number = true
opt.wrap  = true
opt.expandtab = true
opt.smarttab = true
opt.textwidth=78
opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.autowrite = true
opt.history=700                     -- keep 700 lines of command line history
opt.undolevels=700                  -- keep 700 lines of undo
opt.smartcase=true

vim.o.completeopt = "menuone,noselect"
