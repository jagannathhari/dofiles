return  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
    config = function()
        require("diffview").setup({
            use_icons = true,
        })
    end
  }
