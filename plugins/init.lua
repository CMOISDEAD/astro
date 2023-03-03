return {
  "lunarvim/darkplus.nvim",
  "ethanholz/nvim-lastplace",
  { "sainnhe/gruvbox-material", lazy = false },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end
  }
}
