-- [[ Color Highlights ]]

return {
	"brenoprata10/nvim-highlight-colors",
	event = { "BufReadPre", "BufNewFile" },
	name = "colorizer",
	config = function()
		require("nvim-highlight-colors").setup({
			render = "virtual",
			virtual_symbol_position = "eow",
		})
	end,
}
