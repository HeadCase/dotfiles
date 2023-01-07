-- Colour scheme
vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_italic_keywords = false
vim.g.gruvbox_italic_comments = false
vim.cmd('colorscheme gruvbox-flat')

require("colorizer").setup({
	"*",
	python = {
		css = true,
	},
})
