return {
  { "lervag/vimtex",               lazy = false },
  { "lunarvim/darkplus.nvim",      lazy = false },
  { "sekke276/dark_flat.nvim",     lazy = false },
  { "sainnhe/gruvbox-material",    lazy = false },
  { "projekt0n/github-nvim-theme", lazy = false },
  {
    "ziontee113/icon-picker.nvim",
    lazy = false,
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true
      })
    end
  },
  { "ethanholz/nvim-lastplace" },
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
  },
  { "mfussenegger/nvim-jdtls", enabled = false },
  { 
    "javiorfo/nvim-soil",
    lazy = true,
    ft = "plantuml",
    enabled = false
  }
}
