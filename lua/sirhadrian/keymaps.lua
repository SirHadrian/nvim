local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("nmap <unique> <c-r> <Plug>NetrwRefresh")

-- Better window navigation
keymap("n", "<C-h>", "<C-w><C-h>", opts) -- left window
keymap("n", "<C-j>", "<C-w><C-j>", opts) -- down window
keymap("n", "<C-k>", "<C-w><C-k>", opts) -- up window
keymap("n", "<C-l>", "<C-w><C-l>", opts) -- right window

-- Resize with arrows when using multiple windows
keymap("n", "<C-Up>", "<cmd>resize -2<cr>", opts)
keymap("n", "<C-down>", "<cmd>resize +2<cr>", opts)
keymap("n", "<C-right>", "<cmd>vertical resize -2<cr>", opts)
keymap("n", "<C-left>", "<cmd>vertical resize +2<cr>", opts)

--keymap.set("n", "<leader>e", vim.cmd.Ex)
--keymap("n", "<leader>w", "<cmd>w<cr>", opts)
--keymap("n", "<leader>q", "<cmd>qa<cr>", opts)
--keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)

-- Buffer navigation
keymap("n", "<M-k>", "<cmd>bprevious<cr>", opts)
keymap("n", "<M-j>", "<cmd>bnext<cr>", opts)

-- Exit insert mode
keymap("i", "jj", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)
keymap("i", "jk", "<Esc>", opts)
keymap("i", "kk", "<Esc>", opts)

-- Navigate insert mode
-- keymap("i", "C-l", "<Right>", opts)
-- keymap("i", "C-h", "<Left>", opts)
-- keymap("i", "C-j", "<Down>", opts)
-- keymap("i", "C-k", "<Up>", opts)

-- Normal mode
-- Move lines up and down
keymap("n", "<C-[>", "<cmd>m .+1<cr>==", opts)
keymap("n", "<C-]>", "<cmd>m .-2<cr>==", opts)

-- -- Visual mode
-- keymap("v", "<C-[>", "<cmd>m '>+1<cr>gv=gv", opts)
-- keymap("v", "<C-]>", "<cmd>m '<-2<cr>gv=gv", opts)

-- Keep cursor in the middle
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Keep search terms in the middle
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Replace current word in file
keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- keymap("v", "<C-,>", "<gv", opts)
-- keymap("v", "<C-.>", ">gv", opts)

-- keymap("v", "<C-j>", "<cmd>m +1<cr>", opts)
-- keymap("v", "<C-k>", "<cmd>m -2<cr>", opts)

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
