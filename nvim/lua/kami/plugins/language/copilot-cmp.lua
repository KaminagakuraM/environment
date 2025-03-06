-- [[ Copilot-CMP ]]

return {
	"zbirenbaum/copilot-cmp",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("copilot_cmp").setup()
	end,
}
