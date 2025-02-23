-- [[ Package Manager ]]

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		-- import mason linter and formatter
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
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
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls", -- lua
				"pyright", -- python
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				-- Linters -- currently not enabled
				-- "htmlhint", -- html linter
				-- "stylelint", -- css linter
				-- "eslint_d", -- javascript linter
				-- "pylint", -- python linter
				-- "luacheck", -- lua linter -- could not get this to work. luarock error according to :mason
			},
		})
	end,
}
