local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
require("lazy").setup({

  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },

  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    config = function()
      require("mason-lspconfig").setup()
    end
  },

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
    'rose-pine/neovim',
    lazy = true,
    name = 'rose-pine'
  },

  {
    -- Which-key Extension
    "folke/which-key.nvim",
    lazy = false,
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    enabled = false,
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    enabled = false,
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
    enabled = false,
    version = "*",
    config = true
  },

  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },

  -- Git
  {
    "airblade/vim-gitgutter",
  },

  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" },
      },
    },
  },

  {
    "ggandor/leap.nvim",
    lazy = false,
  },

  {
    "mbbill/undotree",
    lazy = false,
    enabled = false,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },

  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  }

})
