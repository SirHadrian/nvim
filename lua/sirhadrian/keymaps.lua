local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- left window
keymap("n", "<C-k>", "<C-w>k", opts) -- up window
keymap("n", "<C-j>", "<C-w>j", opts) -- down window
keymap("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-down>", ":resize +2<cr>", opts)
keymap("n", "<C-right>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-left>", ":vertical resize +2<cr>", opts)

--keymap.set("n", "<leader>e", vim.cmd.Ex)
--keymap("n", "<leader>w", ":w<cr>", opts)
--keymap("n", "<leader>q", ":qa<cr>", opts)
--keymap("n", "<leader>e", ":Neotree toggle<cr>", opts)

-- Buffer navigation
keymap("n", "<A-j>", ":bprevious<cr>", opts)
keymap("n", "<A-k>", ":bnext<cr>", opts)

-- Exit insert mode
keymap("i", "ii", "<Esc>", opts)
keymap("i", "jj", "<Esc>", opts)

--keymap("n", "<leader>h", ":Alpha<cr>", opts)
--keymap("n", "<leader>c", ":bdelete<cr>", opts)

-- Window split
--keymap("n", "<S-v>", ":vsplit<cr>", opts)
--keymap("n", "<S-h>", ":split<cr>", opts)
--keymap("n", "<S-q>", ":on<cr>", opts)

-- Telescope
--keymap('n', '<leader>ff', ":Telescope find_files<cr>", opts)
--keymap('n', '<leader>gf', ":Telescope git_files<cr>", opts)
--keymap('n', '<leader>gg', ":Telescope live_grep<cr>", opts)
--keymap('n', '<leader>fb', ":Telescope buffers<cr>", opts)
--keymap('n', '<leader>fh', ":Telescope help_tags<cr>", opts)

keymap("n", "<C-=>", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.25<cr>", opts)
keymap("n", "<C-->", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1 / 1.25<cr>", opts)
