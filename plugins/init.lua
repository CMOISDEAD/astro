return {
  { "lervag/vimtex", lazy = false },
  { "lunarvim/darkplus.nvim", lazy = false },
  { "sekke276/dark_flat.nvim", lazy = false },
  -- { "sainnhe/gruvbox-material", lazy = false },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      dim_inactive = false,
    },
  },
  { "projekt0n/github-nvim-theme", lazy = false },
  {
    "ziontee113/icon-picker.nvim",
    lazy = false,
    config = function()
      require("icon-picker").setup {
        disable_legacy_commands = true,
      }
    end,
  },
  { "ethanholz/nvim-lastplace" },
  {
    "folke/todo-comments.nvim",
    config = function() require("todo-comments").setup() end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function() require("hop").setup() end,
  },
  -- {
  --   "j-hui/fidget.nvim",
  --   lazy = false,
  --   opts = {
  --     notification = {
  --       override_vim_notify = true,
  --     },
  --   },
  -- },
  {
    "mattn/emmet-vim",
    lazy = false,
  },
  {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    ft = { "http", "json" },
    -- latest commit breaks formatting
    commit = "8b62563",
    opts = {
      result_split_in_place = true,
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "rcasia/neotest-java",
  },
  {
    "vimwiki/vimwiki",
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "0.1.*",
    build = function() require("typst-preview").update() end,
  },
}
