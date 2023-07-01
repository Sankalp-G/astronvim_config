return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "ruby",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      -- "scss",
      "json",
      "yaml",
      -- "bash",
      "python",
      -- "rust",
      -- "go",
      "java",
      "c",
      "cpp",
      "regex",
    })

    require("nvim-treesitter.configs").setup {
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
      },
    }
  end,
}
