-- [[ Explore Tree ]]

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},

			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},

			-- disable window_picker for explorer to work well
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},

			-- filters
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
