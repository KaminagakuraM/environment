-- [[ Mini.Nvim (All-In-One) ]]

return {
	"echasnovski/mini.nvim",
	version = false,

	-- Plugins
	config = function()
		-- icons (web-devicons also installed)
		require("mini.icons").setup()

		-- auto closing pairs
		require("mini.pairs").setup()

		-- surround actions
		require("mini.surround").setup()

		-- file explorer
		require("mini.files").setup()

		-- git integration
		require("mini.git").setup()

		-- git differences
		require("mini.diff").setup()

		-- simple statusline
		require("mini.statusline").setup()
	end,
}
