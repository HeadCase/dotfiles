return {
    'eddyekofo94/gruvbox-flat.nvim',
		lazy=false,
    priority = 1000,
    enabled = true,
    config = function()
        vim.cmd([[colorscheme gruvbox-flat]])
    end, 
	}
