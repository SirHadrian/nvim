return {
    -- Themes
    {
        "folke/tokyonight.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    {
        "ellisonleao/gruvbox.nvim",
        lazy = true, -- make sure we load this during startup if it is your main colorscheme
        --priority = 1000
    },

    {
        -- Which-key Extension
        "folke/which-key.nvim",
        lazy = true,
    },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        lazy = false,
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },
    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Alpha (Dashboard)
    {
        'goolord/alpha-nvim',
        lazy = false,
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },

    -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
        }
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = false,
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },


    {
        'akinsho/toggleterm.nvim',
        lazy = true,
        version = "*",
        config = true
    },

}
