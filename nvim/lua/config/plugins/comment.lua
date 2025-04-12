return {
    "numToStr/Comment.nvim",
    keys = { "gc", "gcc", "gbc","gb"},
    config = function()
      require('Comment').setup()
    end,
}
