return {
  "NeogitOrg/neogit",
  keys = {
      {"<leader>ng","<cmd>Neogit<cr>"}
  },
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true
}
