-- Shorten function name
local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("nmap <unique> <c-;> <Plug>NetrwRefresh")

-- window navigation
map("n", "<C-h>", "<C-w><C-h>") -- left window
map("n", "<C-j>", "<C-w><C-j>") -- down window
map("n", "<C-k>", "<C-w><C-k>") -- up window
map("n", "<C-l>", "<C-w><C-l>") -- right window

-- Resize windows with arrows keys
map("n", "<C-Up>", "<cmd>resize -2<cr>")
map("n", "<C-down>", "<cmd>resize +2<cr>")
map("n", "<C-right>", "<cmd>vertical resize -2<cr>")
map("n", "<C-left>", "<cmd>vertical resize +2<cr>")

map("n", "<leader>e", vim.cmd.Ex) -- Vim Ex explorer
map("n", "<leader>w", "<cmd>w<cr>") -- Save buffer
map("n", "<leader>q", "<cmd>qa!<cr>") -- Quit all buffers without saving
map("n", "<leader>k", "<cmd>bdelete<cr>") -- Kill current buffer
map("n", "<leader>p", "<cmd>Lazy<cr>") -- Open plugin manager
map("n", "<leader>h", "<cmd>Alpha<cr>") -- Dashboard

-- Buffer navigation
map("n", "<M-k>", "<cmd>bprevious<cr>")
map("n", "<M-j>", "<cmd>bnext<cr>")

-- Exit insert mode
map("i", "jj", "<Esc>")
map("i", "kj", "<Esc>")
map("i", "jk", "<Esc>")
map("i", "kk", "<Esc>")

-- Move while in insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- Move lines up and down
map("n", "<C-[>", "<cmd>m .+1<cr>==")
map("n", "<C-]>", "<cmd>m .-2<cr>==")

-- Keep cursor in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Replace current word in file
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Nvim zoom
map("n", "<C-=>", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.25<cr>")
map("n", "<C-->", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1 / 1.25<cr>")

-- Lazygit
map("n", "<leader>g", "<cmd>LazyGit<cr>")
