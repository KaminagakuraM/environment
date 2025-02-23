-- [[ Colorscheme ]]

return {
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		name = "dracula",
		priority = 1000,
		config = function()
			-- Personal Customizations
			require("dracula").setup({
				transparent_bg = true,
				colors = {
					visual = "#44475A",
				},
			})
			-- Load Colorscheme
			vim.cmd([[colorscheme dracula]])
		end,
	},
}
