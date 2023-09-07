local opt = vim.opt

opt.number = true -- Line numbers
opt.relativenumber = true
opt.mouse = ""    -- Disable mouse
--opt.guicursor=""
opt.autoindent = true
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.cursorline = true         -- Enable highlighting of the current line
opt.expandtab = true          -- Use spaces instead of tabs
opt.showmode = false          -- Dont show mode since we have a statusline
opt.shiftround = true         -- Round indent
opt.shiftwidth = 4            -- Size of an indent
opt.smartindent = true        -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true         -- Put new windows below current
opt.splitright = true         -- Put new windows right of current
opt.tabstop = 4               -- Number of spaces tabs count for
opt.termguicolors = true      -- True color support
opt.shell = "/usr/bin/fish"
opt.guifont = "CaskaydiaCove Nerd Font Mono:h9"
opt.scrolloff = 8

vim.g.neovide_scale_factor = 1.0
