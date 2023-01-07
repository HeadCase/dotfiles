-- Packer setup
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- LSP and related
	use({ -- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		requires = {
			-- Automatically install LSPs to stdpath for neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			"j-hui/fidget.nvim",
		},
	})
	use("gbrlsnchs/telescope-lsp-handlers.nvim")
	use("onsails/lspkind-nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use({ "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" })

	-- File management
	use("ThePrimeagen/harpoon")
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "kyazdani42/nvim-web-devicons" },
		},
	})

	-- Status line
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- Autocomplete
	use({
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"saadparwaiz1/cmp_luasnip",
	})
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	-- Colourscheme
	use("eddyekofo94/gruvbox-flat.nvim")

	-- Utilities!
	use("tpope/vim-fugitive")
	use("tpope/vim-repeat")
	use("kylechui/nvim-surround")
	use("mhartington/formatter.nvim")
	use("norcalli/nvim-colorizer.lua")
	use({
		"numToStr/Comment.nvim",
		config = function() end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})
end)
