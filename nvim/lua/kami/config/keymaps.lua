-- [[ Basic Keymaps ]]

vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit file" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "disable highlight" })

-- Window
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader><tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" })

-- [[ Plugins ]]

-- Explore Tree
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Telescope
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>gr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })

-- Undo Tree
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "Open Undo Menu" })
