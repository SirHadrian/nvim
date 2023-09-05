return {
	{
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

	{	
    -- Which-key Extension
    "folke/which-key.nvim",
    lazy = true,
    },
    {
 -- Bufferline 
    {
        'akinsho/bufferline.nvim',
	version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    },
    {
    "nvim-neo-tree/neo-tree.nvim",
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
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

     -- Alpha (Dashboard)
    {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
},

  -- Telescope (Fuzzy Finder)
    -- Added these plugins to install Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },
{
    "williamboman/mason.nvim"
},
}
