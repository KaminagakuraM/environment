-- [[ Undo Tree ]]

return {
	"debugloop/telescope-undo.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},
	opts = {
		extensions = {
			undo = {
				mappings = {
					i = {
						-- Disable
						["<cr>"] = false,
						["<S-cr>"] = false,
						["<C-cr>"] = false,

						["<C-y>"] = function(bufnr)
							return require("telescope-undo.actions").yank_additions(bufnr)
						end,

						["<C-d>"] = function(bufnr)
							return require("telescope-undo.actions").yank_deletions(bufnr)
						end,

						["<C-r>"] = function(bufnr)
							return require("telescope-undo.actions").restore(bufnr)
						end,
					},

					n = {
						-- Disable
						["y"] = false,
						["Y"] = false,
						["u"] = false,
					},
				},
			},
		},
	},
	config = function(_, opts)
		-- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
		-- configs for us. We won't use data, as everything is in it's own namespace (telescope
		-- defaults, as well as each extension).
		require("telescope").setup(opts)
		require("telescope").load_extension("undo")
	end,
}
