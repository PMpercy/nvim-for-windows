local opts = { noremap = true, silent = true }
local vim = vim

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

--Save and Close window
keymap("n", "<C-s>", ":w<CR>", {})
keymap("i", "<C-s>", "<Esc>:w<CR>", {})
keymap("n", "<C-w>", ":bdelete<CR>", {})
keymap("n", "<C-q>", ":quit<CR>", {})

--Open explorer
keymap("n", "<C-b>", ":NvimTreeToggle<CR>:NvimTreeRefresh<CR>", opts)
