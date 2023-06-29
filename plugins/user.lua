return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      -- { "<leader>t", "<cmd>TodoTelescope<cr>", desc = "Open todos in telescope" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    config = function()
      require("nvim-treesitter.configs").setup {
        endwise = {
          enable = true,
        },
      }
    end,
  },
}
