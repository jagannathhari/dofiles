return
{
    "nvim-treesitter/nvim-treesitter",
        event = {"BufReadPost", "BufNewFile"},
        config = function() require 'nvim-treesitter.configs'.setup
    {
        highlight =
            {
                enable = true,
                --enable = false,
                additional_vim_regex_highlighting = false,
            },
        indent = {
            enable = true
        },
      ensure_installed = {
        "json",
        "c",
        "javascript",
        "markdown",
        "markdown_inline",
        "comment",
        "python",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
      },

incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    }
    end
}
