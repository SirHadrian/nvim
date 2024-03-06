local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        local lazyrepo = "https://github.com/folke/lazy.nvim.git"
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "--branch=stable", -- latest stable release
                lazyrepo,
                lazypath,
        })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

        -- Use `opts = {}` to force a plugin to be loaded.
        --  This is equivalent to:
        --    require('Comment').setup({})

        { -- Fuzzy Finder (files, lsp, etc)
                "nvim-telescope/telescope.nvim",
                event = "VimEnter",
                branch = "0.1.x",
                dependencies = {
                        "nvim-lua/plenary.nvim",
                        { -- If encountering errors, see telescope-fzf-native README for install instructions
                                "nvim-telescope/telescope-fzf-native.nvim",

                                -- `build` is used to run some command when the plugin is installed/updated.
                                -- This is only run then, not every time Neovim starts up.
                                build = "make",

                                -- `cond` is a condition used to determine whether this plugin should be
                                -- installed and loaded.
                                cond = function()
                                        return vim.fn.executable("make") == 1
                                end,
                        },
                        { "nvim-telescope/telescope-ui-select.nvim" },

                        -- Useful for getting pretty icons, but requires special font.
                        --  If you already have a Nerd Font, or terminal set up with fallback fonts
                        --  you can enable this
                        { "nvim-tree/nvim-web-devicons" },
                },
        },

        { -- LSP Configuration & Plugins
                "neovim/nvim-lspconfig",
                dependencies = {
                        -- Automatically install LSPs and related tools to stdpath for neovim
                        "williamboman/mason.nvim",
                        "williamboman/mason-lspconfig.nvim",
                        "WhoIsSethDaniel/mason-tool-installer.nvim",

                        -- Useful status updates for LSP.
                        -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
                        { "j-hui/fidget.nvim", opts = {} },
                },
        },

        { -- Autocompletion
                "hrsh7th/nvim-cmp",
                lazy = false,
                event = "InsertEnter",
                dependencies = {
                        -- Snippet Engine & its associated nvim-cmp source
                        {
                                "L3MON4D3/LuaSnip",
                                build = (function()
                                        -- Build Step is needed for regex support in snippets
                                        -- This step is not supported in many windows environments
                                        -- Remove the below condition to re-enable on windows
                                        if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
                                                return
                                        end
                                        return "make install_jsregexp"
                                end)(),
                        },
                        "saadparwaiz1/cmp_luasnip",

                        -- Adds other completion capabilities.
                        --  nvim-cmp does not ship with all sources by default. They are split
                        --  into multiple repos for maintenance purposes.
                        "hrsh7th/cmp-nvim-lsp",
                        "hrsh7th/cmp-buffer",
                        "hrsh7th/cmp-path",

                        -- If you want to add a bunch of pre-configured snippets,
                        --    you can use this plugin to help you. It even has snippets
                        --    for various frameworks/libraries/etc. but you will have to
                        --    set up the ones that are useful for you.
                        -- 'rafamadriz/friendly-snippets',
                },
        },

        {
                "nvim-treesitter/nvim-treesitter",
                lazy = false,
                build = ":TSUpdate",
        },

        -- Lualine
        {
                "nvim-lualine/lualine.nvim",
                lazy = false,
                dependencies = { "nvim-tree/nvim-web-devicons" },
        },

        -- Alpha (Dashboard)
        {
                "goolord/alpha-nvim",
                lazy = false,
                config = function()
                        require("alpha").setup(require("alpha.themes.dashboard").config)
                end,
        },

        {
                "windwp/nvim-autopairs",
                lazy = false,
                event = "InsertEnter",
                opts = {}, -- this is equalent to setup({}) function
        },

        {
                "numToStr/Comment.nvim",
                lazy = false,
                opts = {},
        },

        {
                "lewis6991/gitsigns.nvim",
                lazy = false,
                opts = {
                        signs = {
                                add = { text = "+" },
                                change = { text = "~" },
                                delete = { text = "_" },
                                topdelete = { text = "‾" },
                                changedelete = { text = "~" },
                        },
                },
        },

        {
                "ggandor/leap.nvim",
                lazy = false,
                config = function()
                        require('leap').add_default_mappings()
                end,
        },

        {
                "ellisonleao/gruvbox.nvim",
                lazy = false, -- make sure we load this during startup if it is your main colorscheme
                priority = 1000,
        },

        {
                "folke/tokyonight.nvim",
                lazy = true, -- make sure we load this during startup if it is your main colorscheme
        },

        {
                "rose-pine/neovim",
                lazy = true,
                name = "rose-pine",
        },

        {
                "lukas-reineke/indent-blankline.nvim",
                lazy = false,
                opts = {},
                main = "ibl",
        },

        {
                "kdheepak/lazygit.nvim",
                dependencies = { "nvim-lua/plenary.nvim" },
        },

        -- {
        --         'mrcjkb/rustaceanvim',
        --         version = '^4', -- Recommended
        --         ft = { 'rust' },
        -- },

        { "tikhomirov/vim-glsl" },

})
