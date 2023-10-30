local opt = vim.opt

opt.number = true -- Line numbers
opt.relativenumber = true
opt.mouse = ""    -- Disable mouse
--opt.guicursor=""
opt.autoindent = true
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.cursorline = true         -- Enable highlighting of the current line
opt.showmode = false          -- Dont show mode since we have a statusline
opt.shiftround = true         -- Round indent
opt.smartindent = true        -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true         -- Put new windows below current
opt.splitright = true         -- Put new windows right of current
opt.tabstop = 2               -- Number of spaces tabs count for
opt.shiftwidth = 2            -- Size of an indent
opt.expandtab = true          -- Use spaces instead of tabs
opt.termguicolors = true      -- True color support
opt.shell = "/usr/bin/fish"
opt.guifont = "CaskaydiaCove Nerd Font Mono:h9"
opt.scrolloff = 10
opt.hidden = true
opt.cino="t0" -- do not indent c function types
opt.foldmethod = "indent"
opt.foldenable = false -- disable folds when buffer is opened

vim.g.neovide_scale_factor = 1.0
