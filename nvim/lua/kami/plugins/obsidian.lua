-- [[ Obsidian ]]

return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
		"nvim-treesitter",
	},
	config = function()
		require("obsidian").setup({
			dir = "~/Documents/vault/",
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},

			mappings = {
				-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},

				-- Toggle check-boxes
				["<leader>ch"] = {
					action = function()
						return require("obsidian").util.toggle_checkbox()
					end,
					opts = { buffer = true },
				},
			},

			open_app_foreground = true,

			disable_frontmatter = true,

			-- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
			-- URL it will be ignored but you can customize this behavior here.
			---@param url string
			follow_url_func = function(url)
				-- Open the URL in the default web browser.
				vim.fn.jobstart({ "open", url }) -- Mac OS
				-- vim.fn.jobstart({"xdg-open", url})  -- linux
				-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
				-- vim.ui.open(url) -- need Neovim 0.10.0+
			end,

			-- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
			-- file it will be ignored but you can customize this behavior here.
			---@param img string
			follow_img_func = function(img)
				vim.fn.jobstart({ "qlmanage", "-p", img }) -- Mac OS quick look preview
				-- vim.fn.jobstart({"xdg-open", url})  -- linux
				-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
			end,

			picker = {
				name = "telescope.nvim",
			},

			-- Optional, sort search results by "path", "modified", "accessed", or "created".
			-- The recommend value is "modified" and `true` for `sort_reversed`, which means, for example,
			sort_by = "modified",
			sort_reversed = true,

			-- Set the maximum number of lines to read from notes on disk when performing certain searches.
			search_max_lines = 1000,

			-- Optional, determines how certain commands open notes. The valid options are:
			-- 1. "current" (the default) - to always open in the current window
			-- 2. "vsplit" - to open in a vertical split if there's not already a vertical split
			-- 3. "hsplit" - to open in a horizontal split if there's not already a horizontal split
			open_notes_in = "vsplit",

			-- Optional, configure additional syntax highlighting / extmarks.
			-- This requires you have `conceallevel` set to 1 or 2. See `:help conceallevel` for more details.
			ui = {
				enable = true, -- set to false to disable all additional syntax features
				update_debounce = 200, -- update delay after a text change (in milliseconds)
				max_file_length = 5000, -- disable UI features for files with more than this many lines

				-- Define how various check-boxes are displayed
				checkboxes = {
					-- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
					[" "] = { order = 1, char = "󰄱", hl_group = "ObsidianTodo" },
					["x"] = { order = 2, char = "", hl_group = "ObsidianDone" },
					[">"] = { order = 3, char = "", hl_group = "ObsidianRightArrow" },
					["~"] = { order = 4, char = "󰰱", hl_group = "ObsidianTilde" },
					["!"] = { order = 5, char = "", hl_group = "ObsidianImportant" },
				},

				-- Use bullet marks for non-checkbox lists.
				bullets = { char = "•", hl_group = "ObsidianBullet" },

				external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
				reference_text = { hl_group = "ObsidianRefText" },
				highlight_text = { hl_group = "ObsidianHighlightText" },
				tags = { hl_group = "ObsidianTag" },
				block_ids = { hl_group = "ObsidianBlockID" },
				hl_groups = {
					-- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
					ObsidianTodo = { bold = true, fg = "#f78c6c" },
					ObsidianDone = { bold = true, fg = "#89ddff" },
					ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
					ObsidianTilde = { bold = true, fg = "#ff5370" },
					ObsidianImportant = { bold = true, fg = "#d73128" },
					ObsidianBullet = { bold = true, fg = "#89ddff" },
					ObsidianRefText = { underline = true, fg = "#c792ea" },
					ObsidianExtLinkIcon = { fg = "#c792ea" },
					ObsidianTag = { italic = true, fg = "#89ddff" },
					ObsidianBlockID = { italic = true, fg = "#89ddff" },
					ObsidianHighlightText = { bg = "#75662e" },
				},
			},

			-- Specify how to handle attachments.
			attachments = {
				img_folder = "media/",
			},
		})
	end,
}
