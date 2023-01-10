local diag = vim.diagnostic
local buf = vim.lsp.buf

vim.keymap.set("n", "<leader>e", function()
	diag.open_float()
end, {desc = 'LSP [e]rror float'})
vim.keymap.set("n", "[d", function()
	diag.goto_prev()
end)
vim.keymap.set("n", "]d", function()
	diag.goto_next()
end)
vim.keymap.set("n", "<leader>q", function()
	vim.diagnostic.setloclist()
end, {desc = 'Add LSP diagnostics to [Q]F list'})

-- Use an on_attach function to only map the following keys after the language
-- server attaches to the current buffer
local on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP:" .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	-- Mappings.
	nmap("gD", buf.declaration)
	nmap("gd", buf.definition)
	nmap("K", buf.hover)
	nmap("gi", buf.implementation)
	nmap("gr", buf.references)
	nmap("<C-k>", buf.signature_help)
	nmap("<leader>wa", buf.add_workspace_folder)
	nmap("<leader>wr", buf.remove_workspace_folder)
	nmap("<leader>D", buf.type_definition)
	nmap("<leader>rn", buf.rename)
	nmap("<leader>ca", buf.code_action)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local servers = {
	"bashls",
	"gopls",
	"jsonls",
	"pyright",
	"r_language_server",
	"sumneko_lua",
	"texlab",
	"yamlls",
}
require("mason").setup()
require("mason-lspconfig").setup()

for _, lsp in ipairs(servers) do
	require("lspconfig")[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Lua LSP configuration for vim commands
-- Make runtime files discoverable to the server
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lspconfig").sumneko_lua.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT)
				version = "LuaJIT",
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = { library = vim.api.nvim_get_runtime_file("", true) },
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = { enable = false },
		},
	},
})


-- Diagnostics
local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
