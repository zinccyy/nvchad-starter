return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "vimdoc",

       -- low level
        "c",
        "zig",
        "cpp",
        "rust",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "clangd",
        "pyright",
      },
    },
  },

  {
    "elentok/format-on-save.nvim",
    config = function()
      local format_on_save = require("format-on-save")
      local formatters = require("format-on-save.formatters")

      format_on_save.setup({
        exclude_path_patterns = {
          "/node_modules/",
          ".local/share/nvim/lazy",
        },
        formatter_by_ft = {
          c = formatters.lsp,
          cpp = formatters.lsp,
          lua = formatters.lsp,
        },
        auto_commands = true,
        user_commands = true,
      })
    end,
    lazy = false,
  },
}
