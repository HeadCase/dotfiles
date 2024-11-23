return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			json = { "prettier" },
			markdown = { "mdformat" },
			bash = { "mdformat" },
			zsh = { "beautysh" },
			-- python = { "isort", "blue" },
		},
	},
}
