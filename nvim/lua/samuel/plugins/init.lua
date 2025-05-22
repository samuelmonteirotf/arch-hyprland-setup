return {
  -- Base
  { "nvim-lua/plenary.nvim" },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("samuel.plugins.lsp")
    end
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip"
    },
    config = function()
      require("samuel.plugins.cmp")
    end
  },

  -- Syntax highlight
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("samuel.plugins.treesitter")
    end
  },

  -- Auto tag HTML
  { "windwp/nvim-ts-autotag" },

  -- Git
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- File Explorer
  { "nvim-tree/nvim-tree.lua", opts = {} },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Tema
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end
  },

  -- Null-ls para formatadores e linters
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("samuel.plugins.null-ls")
    end,
  }
}

