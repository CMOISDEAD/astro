return {
  "javiorfo/nvim-soil",
  lazy = true,
  config = function()
    require("soil").setup {
      image = {
        darkmode = true,
        format = "png",
      },
    }
  end,
}
