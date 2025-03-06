-- [[ Catppuccin Colorscheme ]]

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- personal customizations
			require("catppuccin").setup({
				flavour = "frappe",
				transparent_background = true,
			})
			-- load Colorscheme
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
