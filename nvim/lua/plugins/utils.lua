return {
	{ "Exafunction/codeium.vim" },
	{ "lewis6991/gitsigns.nvim" },
	{ "tpope/vim-fugitive", config = function() end },
	{ "tpope/vim-rhubarb", config = function() end },
	{ "tpope/vim-sleuth", config = function() end },
	{ "tpope/vim-repeat", config = function() end },
	{ "numToStr/Comment.nvim", opts = {} },
	-- { "kylechui/nvim-surround", opts = {} },
	{ "folke/which-key.nvim", opts = {} },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}
