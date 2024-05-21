-- Shorten function name
local map = vim.keymap.set
local opts = { silent = true, noremap = true}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("nmap <unique> <c-;> <Plug>NetrwRefresh")

-- window navigation
map("n", "<C-h>", "<C-w><C-h>", opts) -- left window
map("n", "<C-j>", "<C-w><C-j>", opts) -- down window
map("n", "<C-k>", "<C-w><C-k>", opts) -- up window
map("n", "<C-l>", "<C-w><C-l>", opts) -- right window

-- Resize windows with arrows keys
map("n", "<C-down>", "<cmd>resize +2<cr>", opts)
map("n", "<C-Up>", "<cmd>resize -2<cr>", opts)
map("n", "<C-right>", "<cmd>vertical resize -2<cr>", opts)
map("n", "<C-left>", "<cmd>vertical resize +2<cr>", opts)

map("n", "<leader>e", vim.cmd.Ex, opts) -- Vim Ex explorer
map("n", "<leader>w", "<cmd>w<cr>", opts) -- Save buffer
map("n", "<leader>q", "<cmd>qa!<cr>", opts) -- Quit all buffers without saving
map("n", "<leader>k", "<cmd>bdelete<cr>", opts) -- Kill current buffer
map("n", "<leader>p", "<cmd>Lazy<cr>", opts) -- Open plugin manager
map("n", "<leader>h", "<cmd>Alpha<cr>", opts) -- Dashboard
map("n", "<leader>m", "<cmd>Mason<cr>", opts) -- Open Mason

-- Buffer navigation
map("n", "<M-k>", "<cmd>bprevious<cr>", opts)
map("n", "<M-j>", "<cmd>bnext<cr>", opts)

-- Exit insert mode
map("i", "jj", "<Esc>", opts)
map("i", "kj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)
map("i", "kk", "<Esc>", opts)

-- Exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>', opts)

-- Move while in insert mode
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

-- Move lines up and down
map("n", "<C-[>", "<cmd>m .+1<cr>==", opts)
map("n", "<C-]>", "<cmd>m .-2<cr>==", opts)

-- Keep cursor in the middle
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Keep search terms in the middle
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Replace current word in file
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Neovide zoom
map("n", "<C-=>", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.25<cr>", opts)
map("n", "<C-->", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1 / 1.25<cr>", opts)
-- Neovide transparency
map("n", "<C-]>", "<cmd>lua vim.g.neovide_transparency = vim.g.neovide_transparency * 1.25<cr>", opts)
map("n", "<C-[>", "<cmd>lua vim.g.neovide_transparency = vim.g.neovide_transparency * 1 / 1.25<cr>", opts)

-- Lazygit
map("n", "<leader>g", "<cmd>LazyGit<cr>", opts)

-- Make transparent
map("n", "<leader>t", "<cmd>lua Transparent()<cr>", opts)
