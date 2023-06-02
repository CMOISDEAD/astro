return {
  { "lervag/vimtex",               lazy = false },
  { "lunarvim/darkplus.nvim",      lazy = false },
  { "sainnhe/gruvbox-material",    lazy = false },
  { 'projekt0n/github-nvim-theme', lazy = false },
  { "ethanholz/nvim-lastplace" },
  { "mfussenegger/nvim-jdtls" },
  { "p00f/clangd_extensions.nvim" },
  {
    "folke/todo-comments.nvim",
    config = function() require("todo-comments").setup() end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function() require("hop").setup() end,
  },
  {
    "vigoux/notifier.nvim",
    lazy = false,
    config = function() require("notifier").setup {} end,
    enabled = false,
  },
  {
    "mattn/emmet-vim",
    lazy = false
  }
}
