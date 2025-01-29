return {
  "nvim-lua/plenary.nvim",

  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      require "configs.everforest"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "configs.nvim-tree"
    end,
  },

  {
    "folke/zen-mode.nvim",
    opts = function()
      return require "configs.zen-mode"
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    main = "ibl",
    opts = function()
      return require "configs.ibl"
    end,
  },

  -- formatting!
  {
    "stevearc/conform.nvim",
    opts = function()
      return require "configs.conform"
    end,
  },

  -- git stuff
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = {},
  },

  -- lsp stuff
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      require "configs.lsp"
    end,
  },

  -- Incomplete jdtls configuration
  -- {
  --   "mfussenegger/nvim-jdtls",
  --   ft = { "java" },
  --   opts = function()
  --     require "configs.lsp.jdtls"
  --   end,
  -- },

  -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "configs.luasnip"
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return require "configs.cmp"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require "configs.telescope"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require "configs.treesitter"
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  {
    "mradhyaf/floating-terminal.nvim",
    branch = "main",
    config = function()
      local fterm = require "floating-terminal"
      vim.api.nvim_create_user_command("Fterm", fterm.show, {})
      vim.keymap.set({ "n", "i" }, "<A-t>", fterm.show)
      vim.keymap.set({ "t" }, "<A-t>", fterm.hide)
    end,
  },
}
