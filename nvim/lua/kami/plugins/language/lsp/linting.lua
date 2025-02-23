-- [[ Linting Servers ]]
-- currently disabled as seen in lsp_manager.lua

return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			-- not currently enabled as seen in lsp_manager.lua
			-- html = { "htmlhint" },
			-- css = { "stylelint" },
			-- javascript = { "eslint_d" },
			-- python = { "pylint" },
			-- lua = { "luacheck" }, -- could not get this to work. luarock error according to :mason
		}
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
