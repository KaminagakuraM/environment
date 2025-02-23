-- [[ Status Line ]]

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		lualine.setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "" }, right_padding = 2 },
					{ "searchcount", separator = { left = "" }, right_padding = 2 },
				},

				lualine_b = {
					{ "filename", "branch", separator = { left = "" }, right_padding = 2 },
				},

				lualine_c = {
					{ "filetype", separator = { left = "" }, right_padding = 2 },
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "diagnostics" },
					{ "fileformat", separator = { right = "" }, right_padding = 2 },
				},

				lualine_y = {
					{ "progress", separator = { right = "" }, left_padding = 2 },
				},

				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
		})
	end,
}
