local options = {
        -- Make line numbers default
        number = true,
        relativenumber = true,
        history = 1000,
        -- Disable mouse
        mouse = "",
        --opt.guicursor=""
        autoindent = true,
        -- Sync clipboard between OS and Neovim.
        clipboard = "unnamedplus",
        -- Enable break indent
        breakindent = true,
        -- Save undo history
        undofile = true,
        -- Case-insensitive searching UNLESS \C or capital in search
        ignorecase = true,
        smartcase = true,
        -- Keep signcolumn on by default
        signcolumn = "yes",
        -- Decrease update time
        updatetime = 250,
        timeoutlen = 300,
        -- Configure how new splits should be opened
        splitbelow = true, -- Put new windows below current
        splitright = true, -- Put new windows right of current
        -- Sets how neovim will display certain whitespace in the editor.
        list = true,
        listchars = { tab = "» ", trail = "·", nbsp = "␣" },
        -- Preview substitutions live, as you type!
        inccommand = "split",
        -- Minimal number of screen lines to keep above and below the cursor.
        scrolloff = 10,
        -- Set highlight on search
        hlsearch = false,
        backspace = "indent,eol,start",
        -- Dont show mode since we have a statusline
        showmode = false,
        -- Round indent
        shiftround = true,
        -- Insert indents automatically
        smartindent = true,
        spelllang = { "en" },
        -- Number of spaces tabs count for
        tabstop = 8,
        -- Size of an indent
        shiftwidth = 8,
        -- Use spaces instead of tabs
        expandtab = true,
        -- True color support
        termguicolors = true,
        guifont = "CaskaydiaCove Nerd Font Mono:h9",
        hidden = true,
        -- do not indent c function types
        cino = "t0",
        foldmethod = "indent",
        -- disable folds when buffer is opened
        foldenable = false,
        -- max number of items to show in popup menu
        pumheight = 10,
        incsearch = true,
        encoding = "utf-8",
        spell = true,
        shell = "/usr/bin/fish",
        -- Show which line your cursor is on
        cursorline = true,
        -- Vertical column
        colorcolumn = "80",
}

vim.g.neovide_transparency = 1.0
vim.g.neovide_scale_factor = 1.0

-- Netrw line numbers
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"

for option, value in pairs(options) do
        vim.opt[option] = value
end
