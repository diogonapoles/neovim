return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"angularls",
				"gopls",
				"clangd",
				"cssls",
				"graphql",
				"html",
				"java_language_server",
				"jsonls",
				"lua_ls",
				"omnisharp",
				"prismals",
				"pyright",
				"svelte",
				"tailwindcss",
				"texlab",
				"tsserver",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black", -- python formatter
				"csharpier", -- C# formatter
				"eslint_d", -- JavaScript/TypeScript linter
				"isort", -- python formatter
				"latexindent", -- LaTeX formatter
				"pylint", -- python linter
				"prettier", -- general code formatter
				"stylua", -- lua formatter
				"gofumpt",
				"golines",
			},
		})
	end,
}
