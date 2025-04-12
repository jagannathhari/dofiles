return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            overrides = {
                GruvboxRedSign = {bg = "#282828"},
                GruvboxGreenSign = {bg = "#282828"},
                GruvboxYellowSign = {bg = "#282828"},
                GruvboxPurpleSign = {bg = "#282828"},
                SignColumn = {bg = "#282827"},
            }
        })
    end
}
