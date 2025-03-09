-- [[ No Config Needed ]]

return {
	{
		-- navigation keys
		"christoomey/vim-tmux-navigator",
		event = "VeryLazy",
	},
	{
		-- for dependencies
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
}
