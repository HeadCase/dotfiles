return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			json = { "prettierd" },
			markdown = { "prettierd" },
			bash = { "mdformat" },
			zsh = { "beautysh" },
			toml = { "taplo" },
			python = { "docformatter", lsp_format = "first" },
			-- python = { "isort", "blue" },
		},
	},
}
